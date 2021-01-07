import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/data/demos.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class CategoryListItem extends StatefulWidget {
  const CategoryListItem({
    Key key,
    this.category,
    this.imageString,
    this.demos = const [],
    this.initiallyExpanded = false,
  })  : assert(initiallyExpanded != null),
        super(key: key);

  final CatalogDemoCategory category;
  final String imageString;
  final List<CatalogDemo> demos;
  final bool initiallyExpanded;

  @override
  _CategoryListItemState createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static const _expandDuration = Duration(milliseconds: 200);
  AnimationController _controller;
  Animation<double> _childrenHeightFactor;
  Animation<double> _headerChevronOpacity;
  Animation<double> _headerHeight;
  Animation<EdgeInsetsGeometry> _headerMargin;
  Animation<EdgeInsetsGeometry> _headerImagePadding;
  Animation<EdgeInsetsGeometry> _childrenPadding;
  Animation<BorderRadius> _headerBorderRadius;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _expandDuration, vsync: this);
    _childrenHeightFactor = _controller.drive(_easeInTween);
    _headerChevronOpacity = _controller.drive(_easeInTween);
    _headerHeight = Tween<double>(
      begin: Sizes.SIZE_80,
      end: Sizes.SIZE_96,
    ).animate(_controller);
    _headerMargin = EdgeInsetsGeometryTween(
      begin: const EdgeInsets.fromLTRB(
        Sizes.SIZE_32,
        Sizes.SIZE_8,
        Sizes.SIZE_32,
        Sizes.SIZE_8,
      ),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerImagePadding = EdgeInsetsGeometryTween(
      begin: const EdgeInsets.all(
        Sizes.SIZE_8,
      ),
      end: const EdgeInsetsDirectional.fromSTEB(
        Sizes.SIZE_16,
        Sizes.SIZE_8,
        Sizes.SIZE_8,
        Sizes.SIZE_8,
      ),
    ).animate(_controller);
    _childrenPadding = EdgeInsetsGeometryTween(
      begin: const EdgeInsets.symmetric(
        horizontal: Sizes.SIZE_32,
      ),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerBorderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(
        Sizes.RADIUS_10,
      ),
      end: BorderRadius.zero,
    ).animate(_controller);

    _isExpanded = PageStorage.of(context)?.readState(context) as bool ??
        widget.initiallyExpanded;
    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild without widget.demos.
          });
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
  }

  Widget _buildHeaderWithChildren(BuildContext context, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CategoryHeader(
          margin: _headerMargin.value,
          imagePadding: _headerImagePadding.value,
          borderRadius: _headerBorderRadius.value,
          height: _headerHeight.value,
          chevronOpacity: _headerChevronOpacity.value,
          imageString: widget.imageString,
          category: widget.category,
          onTap: _handleTap,
        ),
        Padding(
          padding: _childrenPadding.value,
          child: ClipRect(
            child: Align(
              heightFactor: _childrenHeightFactor.value,
              child: child,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final closed = !_isExpanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildHeaderWithChildren,
      child: closed
          ? null
          : _ExpandedCategoryDemos(
              category: widget.category,
              demos: widget.demos,
            ),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    Key key,
    this.margin,
    this.imagePadding,
    this.borderRadius,
    this.height,
    this.chevronOpacity,
    this.imageString,
    this.category,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry imagePadding;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final String imageString;
  final CatalogDemoCategory category;
  final double chevronOpacity;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: margin,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        color: colorScheme.onBackground,
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: InkWell(
            // Makes integration tests possible.
            key: ValueKey('${category.name}CategoryHeader'),
            onTap: onTap,
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Padding(
                        padding: imagePadding,
                        child: ExcludeSemantics(
                          child: Image.asset(
                            imageString,
                            width: Sizes.WIDTH_64,
                            height: Sizes.HEIGHT_64,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 8),
                        child: Text(
                          category.displayTitle(),
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: colorScheme.onSurface,
                                fontSize: Sizes.TEXT_SIZE_18,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: chevronOpacity,
                  child: chevronOpacity != 0
                      ? Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 8,
                            end: 32,
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            color: colorScheme.onSurface,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ExpandedCategoryDemos extends StatelessWidget {
  const _ExpandedCategoryDemos({
    Key key,
    this.category,
    this.demos,
  }) : super(key: key);

  final CatalogDemoCategory category;
  final List<CatalogDemo> demos;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Makes integration tests possible.
      key: ValueKey('${category.name}DemoList'),
      children: [
        for (final demo in demos)
          CategoryDemoItem(
            demo: demo,
            routeName: demo.routeName,
          ),
        const SizedBox(height: Sizes.HEIGHT_12), // Extra space below.
      ],
    );
  }
}

class CategoryDemoItem extends StatelessWidget {
  const CategoryDemoItem({
    Key key,
    this.demo,
    this.routeName,
  }) : super(key: key);

  final CatalogDemo demo;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      // Makes integration tests possible.
      key: ValueKey(demo.describe),
      color: Theme.of(context).colorScheme.surface,
      child: MergeSemantics(
        child: InkWell(
          onTap: () {
            if (routeName != null) {
              ExtendedNavigator.root.push(routeName);
            }
          },
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: Sizes.SIZE_32,
              top: Sizes.SIZE_20,
              end: isDisplayDesktop(context) ? Sizes.SIZE_16 : Sizes.SIZE_8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  demo.icon,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: Sizes.WIDTH_40),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        demo.title,
                        style: textTheme.subtitle1
                            .apply(color: colorScheme.onSurface),
                      ),
                      Text(
                        demo.subtitle,
                        style: textTheme.overline.apply(
                          color: colorScheme.onSurface.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(height: Sizes.HEIGHT_20),
                      Divider(
                        thickness: 1,
                        height: Sizes.HEIGHT_1,
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
