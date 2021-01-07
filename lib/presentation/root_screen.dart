import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/app_theme.dart';
import 'package:fluttercatalog/bloc/theme_bloc.dart';
import 'package:fluttercatalog/data/demos.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

import '../main.dart';
import 'catalog/widgets/gallery_widgets.dart';
import 'catalog/widgets/spaces.dart';
import 'layout/adaptive.dart';
import 'layout/image_placeholder.dart';

const _horizontalPadding = 32.0;
const _carouselItemMargin = 8.0;
const _horizontalDesktopPadding = 81.0;
const _carouselHeightMin = 200.0 + 2 * _carouselItemMargin;
const _desktopCardsPerPage = 4;

//TODO:: clean up rootScreen
//TODO:: Add BackDrop
//TODO:: Link my Bio and Details

class RootScreen extends StatefulWidget {
  RootScreen({@required this.themeBloc});

  final ThemeBloc themeBloc;

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen>
    with SingleTickerProviderStateMixin, RouteAware {
  AnimationController _animationController;
  ThemeBloc themeBloc;

  @override
  void initState() {
    super.initState();
    themeBloc = widget.themeBloc;
    _animationController = AnimationController(
      vsync: this,
      value: 1.0,
      duration: const Duration(milliseconds: 800),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', AppTheme.lightThemeData);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void didPopNext() {
    themeBloc.selectedTheme.add(CurrentTheme('light', AppTheme.lightThemeData));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final carouselCards = <Widget>[
      _CarouselCard(
        demo: caseStudyDemos()[0],
        asset: const AssetImage(DropImagePath.DROP_COVER),
        assetColor: const Color(0xFFFEDBD0),
        assetDark: const AssetImage(DropImagePath.DROP_COVER),
        assetDarkColor: const Color(0xFF543B3C),
        textColor: AppColors.primaryColor,
        onTap: () {
          ExtendedNavigator.root.push(
            caseStudyDemos()[0].routeName,
            arguments: DropSplashScreenArguments(
              themeBloc: themeBloc,
            ),
          );
        },
      ),
      _CarouselCard(
        demo: caseStudyDemos()[1],
        textColor: AppColors.primaryColor,
        asset: const AssetImage(RoamImagePath.ROAM_COVER),
        assetColor: const Color(0xFFD1F2E6),
        assetDark: const AssetImage(RoamImagePath.ROAM_COVER),
        assetDarkColor: const Color(0xFF253538),
        onTap: () {
          ExtendedNavigator.root.push(
            caseStudyDemos()[1].routeName,
            arguments: RoamSplashScreenArguments(
              themeBloc: themeBloc,
            ),
          );
        },
      ),
      _CarouselCard(
        demo: caseStudyDemos()[2],
        textColor: AppColors.primaryColor,
        asset: const AssetImage(BalenciagaImagePath.BALENCIAGA_COVER),
        assetColor: const Color(0xFFD1F2E6),
        assetDark: const AssetImage(BalenciagaImagePath.BALENCIAGA_COVER),
        assetDarkColor: const Color(0xFF253538),
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.grey50,
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 32.0,
                  top: 16.0,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        //open drawer
                      },
                      child: Icon(
                        Icons.menu,
                        color: AppColors.primaryColor,
                        size: Sizes.ICON_SIZE_28,
                      ),
                    ),
                    SpaceW12(),
                    Text(
                      StringConst.APP_NAME,
                      style: theme.textTheme.headline5.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              _Carousel(
                children: carouselCards,
                animationController: _animationController,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 32.0,
                  top: 16.0,
                ),
                child: Text(
                  StringConst.CATEGORIES,
                  style: theme.textTheme.headline6.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SpaceH8(),
              ..._buildCategoryList()
            ],
          )
        ],
      ),
    );
  }

  List<Widget> _buildCategoryList() {
    List<Widget> animatedCategoryList = [];

    List<CategoryListItem> categoryListItems = categoryList();
    for (var index = 0; index < categoryListItems.length; index++) {
      animatedCategoryList.add(
        _AnimatedCategoryItem(
          startDelayFraction: 0.00,
          controller: _animationController,
          child: categoryListItems[index],
        ),
      );
    }
    return animatedCategoryList;
  }
}

/// Animates the category item to stagger in. The [_AnimatedCategoryItem.startDelayFraction]
/// gives a delay in the unit of a fraction of the whole animation duration,
/// which is defined in [_AnimatedHomePageState].
class _AnimatedCategoryItem extends StatelessWidget {
  _AnimatedCategoryItem({
    Key key,
    double startDelayFraction,
    @required this.controller,
    @required this.child,
  })  : topPaddingAnimation = Tween(
          begin: 60.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000 + startDelayFraction,
              0.400 + startDelayFraction,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> topPaddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.only(top: topPaddingAnimation.value),
          child: child,
        );
      },
      child: child,
    );
  }
}

/// Animates the carousel to come in from the right.
class _AnimatedCarousel extends StatelessWidget {
  _AnimatedCarousel({
    Key key,
    @required this.child,
    @required this.controller,
  })  : startPositionAnimation = Tween(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> startPositionAnimation;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SizedBox(height: 250),
          AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return PositionedDirectional(
                start: constraints.maxWidth * startPositionAnimation.value,
                child: child,
              );
            },
            child: Container(
              height: 250, //_carouselHeight(.4, context),
              width: constraints.maxWidth,
              child: child,
            ),
          ),
        ],
      );
    });
  }
}

/// Animates a carousel card to come in from the right.
class _AnimatedCarouselCard extends StatelessWidget {
  _AnimatedCarouselCard({
    Key key,
    @required this.child,
    @required this.controller,
  })  : startPaddingAnimation = Tween(
          begin: _horizontalPadding,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.900,
              1.000,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final Widget child;
  final AnimationController controller;
  final Animation<double> startPaddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsetsDirectional.only(
            start: startPaddingAnimation.value,
          ),
          child: child,
        );
      },
      child: child,
    );
  }
}

class _Carousel extends StatefulWidget {
  const _Carousel({
    Key key,
    this.children,
    this.animationController,
  }) : super(key: key);

  final List<Widget> children;
  final AnimationController animationController;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel>
    with SingleTickerProviderStateMixin {
  PageController _controller;
  int _currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_controller == null) {
      // The viewPortFraction is calculated as the width of the device minus the
      // padding.
      final width = MediaQuery.of(context).size.width;
      final padding = (_horizontalPadding * 2) - (_carouselItemMargin * 2);
      _controller = PageController(
        initialPage: _currentPage,
        viewportFraction: (width - padding) / width,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget builder(int index) {
    final carouselCard = AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value;
        if (_controller.position.haveDimensions) {
          value = _controller.page - index;
        } else {
          // If haveDimensions is false, use _currentPage to calculate value.
          value = (_currentPage - index).toDouble();
        }
        // We want the peeking cards to be 160 in height and 0.38 helps
        // achieve that.
        value = (1 - (value.abs() * .38)).clamp(0, 1).toDouble();
        value = Curves.easeOut.transform(value);

        return Center(
          child: Transform(
            transform: Matrix4.diagonal3Values(1.0, value, 1.0),
            alignment: Alignment.center,
            child: child,
          ),
        );
      },
      child: widget.children[index],
    );

    // We only want the second card to be animated.
    if (index == 1) {
      return _AnimatedCarouselCard(
        child: carouselCard,
        controller: widget.animationController,
      );
    } else {
      return carouselCard;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _AnimatedCarousel(
      child: PageView.builder(
        // Makes integration tests possible.
        key: const ValueKey('studyDemoList'),
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        controller: _controller,
        itemCount: widget.children.length,
        itemBuilder: (context, index) => builder(index),
        allowImplicitScrolling: true,
      ),
      controller: widget.animationController,
    );
  }
}

class _CarouselCard extends StatelessWidget {
  const _CarouselCard({
    Key key,
    this.demo,
    this.asset,
    this.assetDark,
    this.assetColor,
    this.assetDarkColor,
    this.textColor,
    this.onTap,
  }) : super(key: key);

  final CatalogDemo demo;
  final ImageProvider asset;
  final ImageProvider assetDark;
  final Color assetColor;
  final Color assetDarkColor;
  final Color textColor;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;
    final asset = isDark ? assetDark : this.asset;
    final assetColor = isDark ? assetDarkColor : this.assetColor;
    final textColor = isDark ? Colors.white.withOpacity(0.87) : this.textColor;

    return Container(
      // Makes integration tests possible.
      key: ValueKey(demo.describe),
      margin:
          EdgeInsets.all(isDisplayDesktop(context) ? 0 : _carouselItemMargin),
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (asset != null)
                FadeInImagePlaceholder(
                  image: asset,
                  child: Ink.image(
                    image: asset,
                    fit: BoxFit.cover,
                  ),
                  placeholder: Container(
                    color: assetColor,
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      demo.title,
                      style: textTheme.subtitle1.apply(color: textColor),
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      demo.subtitle,
                      style: textTheme.caption.apply(color: textColor),
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//double _carouselHeight(double scaleFactor, BuildContext context) => math.max(
//    _carouselHeightMin *
//        GalleryOptions.of(context).textScaleFactor(context) *
//        scaleFactor,
//    _carouselHeightMin);

/// Scrolling physics that snaps to the new item in the [_DesktopCarousel].
class _SnappingScrollPhysics extends ScrollPhysics {
  const _SnappingScrollPhysics({ScrollPhysics parent}) : super(parent: parent);

  @override
  _SnappingScrollPhysics applyTo(ScrollPhysics ancestor) {
    return _SnappingScrollPhysics(parent: buildParent(ancestor));
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
  ) {
    final itemWidth = position.viewportDimension / _desktopCardsPerPage;
    var item = position.pixels / itemWidth;
    if (velocity < -tolerance.velocity) {
      item -= 0.5;
    } else if (velocity > tolerance.velocity) {
      item += 0.5;
    }
    return math.min(
      item.roundToDouble() * itemWidth,
      position.maxScrollExtent,
    );
  }

  @override
  Simulation createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }
    final tolerance = this.tolerance;
    final target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  @override
  bool get allowImplicitScrolling => true;
}

class _DesktopPageButton extends StatelessWidget {
  const _DesktopPageButton({
    Key key,
    this.isEnd = false,
    this.onTap,
  }) : super(key: key);

  final bool isEnd;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final buttonSize = 58.0;
    final padding = _horizontalDesktopPadding - buttonSize / 2;
    return ExcludeSemantics(
      child: Align(
        alignment: isEnd
            ? AlignmentDirectional.centerEnd
            : AlignmentDirectional.centerStart,
        child: Container(
          width: buttonSize,
          height: buttonSize,
          margin: EdgeInsetsDirectional.only(
            start: isEnd ? 0 : padding,
            end: isEnd ? padding : 0,
          ),
          child: Tooltip(
            message: isEnd
                ? MaterialLocalizations.of(context).nextPageTooltip
                : MaterialLocalizations.of(context).previousPageTooltip,
            child: Material(
              color: Colors.black.withOpacity(0.5),
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: onTap,
                child: Icon(
                  isEnd ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
