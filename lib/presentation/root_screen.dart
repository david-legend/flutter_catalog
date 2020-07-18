import 'package:flutter/material.dart';
import 'package:fluttercatalog/data/demos.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/gallery_widgets.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: 1.0,
      duration: const Duration(milliseconds: 800),
    );
//    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey50,
      body: Stack(
        children: [
          ListView(
            children: _buildCategoryList(),
//            [

//              _AnimatedCategoryItem(
//                startDelayFraction: 0.00,
//                controller: _animationController,
//                child: CategoryListItem(
//                  key: const PageStorageKey<CatalogDemoCategory>(
//                    CatalogDemoCategory.profile,
//                  ),
//                  category: CatalogDemoCategory.profile,
//                  imageString: ImagePath.ALEXIO_MORALES,
//                  demos: materialDemos(),
//                  initiallyExpanded: false,
//                ),
//              ),
//              _AnimatedCategoryItem(
//                startDelayFraction: 0.05,
//                controller: _animationController,
//                child: CategoryListItem(
//                  key: const PageStorageKey<CatalogDemoCategory>(
//                    CatalogDemoCategory.settings,
//                  ),
//                  category: CatalogDemoCategory.settings,
//                  imageString: ImagePath.ALEXIO_MORALES,
//                  demos: materialDemos(),
//                  initiallyExpanded: false,
//                ),
//              ),
//              _AnimatedCategoryItem(
//                startDelayFraction: 0.10,
//                controller: _animationController,
//                child: CategoryListItem(
//                  key: const PageStorageKey<CatalogDemoCategory>(
//                    CatalogDemoCategory.login,
//                  ),
//                  category: CatalogDemoCategory.login,
//                  imageString: ImagePath.ALEXIO_MORALES,
//                  demos: materialDemos(),
//                  initiallyExpanded: false,
//                ),
//              ),
//            ],
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
