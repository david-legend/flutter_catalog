import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/empty.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

const double kPadding = Sizes.PADDING_14;

class OnBoardingItem {
  OnBoardingItem(this.imagePath, this.title, this.subtitle);

  final String imagePath;
  final String title;
  final String subtitle;
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late double currentIndexPage;
  late int pageLength;
  PageController _pageController = PageController();

  List<OnBoardingItem> onBoardingItemList = [
    OnBoardingItem(
      RoamImagePath.BEAUTIFUL_SITES,
      RoamStringConst.ONBOARDING_TITLE_1,
      RoamStringConst.LOREM_IPSUM_1,
    ),
    OnBoardingItem(
      RoamImagePath.TRIPS,
      RoamStringConst.ONBOARDING_TITLE_2,
      RoamStringConst.LOREM_IPSUM_1,
    ),
    OnBoardingItem(
      RoamImagePath.FRIENDSHIP_1,
      RoamStringConst.ONBOARDING_TITLE_3,
      RoamStringConst.LOREM_IPSUM_2,
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = onBoardingItemList.length;
  }

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: heightOfScreen,
        width: widthOfScreen,
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: _buildOnBoardingItems(onBoardingItemList),
              onPageChanged: (value) {
                setState(() => currentIndexPage = value.toDouble());
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding, vertical: Sizes.PADDING_8),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _buildDotsIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildOnBoardingItems(List<OnBoardingItem> onBoardingItemList) {
    List<Widget> items = [];

    for (int index = 0; index < onBoardingItemList.length; index++) {
      items.add(
        onBoardingItem(
          imagePath: onBoardingItemList[index].imagePath,
          title: onBoardingItemList[index].title,
          subtitle: onBoardingItemList[index].subtitle,
        ),
      );
    }
    return items;
  }

  Widget onBoardingItem({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          imagePath,
          width: widthOfScreen,
          height: heightOfScreen,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: Gradients.darkOverlayGradient,
          ),
        ),
        Container(
          height: heightOfScreen * 0.4,
          margin: EdgeInsets.only(top: heightOfScreen * 0.6),
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: RoamAppColors.white,
                ),
              ),
              SpaceH8(),
              Text(
                subtitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: RoamAppColors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildDotsIndicator() {
    ThemeData theme = Theme.of(context);
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    return Row(
      mainAxisAlignment:
      !isLastItem() ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: [
        !isLastItem()
            ? Expanded(
          child: _buildControls(),
        )
            : Container(
          width: widthOfScreen - (kPadding * 2),
          height: Sizes.HEIGHT_56,
          child: Center(
            child: CustomButton(
              onPressed: () {

                AutoRouter.of(context).push(LoginScreenRoute());
              },
              title: RoamStringConst.GET_STARTED,
              borderRadius: Sizes.RADIUS_8,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: RoamAppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

  bool isFirstItem() {
    return currentIndexPage > 0 && currentIndexPage < pageLength;
  }

  bool isLastItem() {
    return currentIndexPage == pageLength - 1;
  }

  Widget _buildControls() {
    return Row(
      children: [
        isFirstItem()
            ? Container(
          width: Sizes.WIDTH_56,
          height: Sizes.HEIGHT_56,
          child: CustomButton2(
            onPressed: () => _slideBackwards(),
            color: RoamAppColors.lightGreen50,
            iconColor: RoamAppColors.accentColor,
            borderRadius: Sizes.RADIUS_8,
            icon: FeatherIcons.chevronLeft,
          ),
        )
            : Empty(),
        isFirstItem() ? Spacer() : Empty(),
        Container(
          height: assignHeight(context: context, fraction: 0.1),
          child: DotsIndicator(
            dotsCount: pageLength,
            position: currentIndexPage,
            decorator: DotsDecorator(
              color: RoamAppColors.grey,
              activeColor: RoamAppColors.white,
              size: Size(Sizes.SIZE_12, Sizes.SIZE_6),
              activeSize: Size(Sizes.SIZE_20, Sizes.SIZE_6),
              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(const Radius.circular(Sizes.RADIUS_8)),
              ),
              activeShape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(const Radius.circular(Sizes.RADIUS_8)),
              ),
              spacing: EdgeInsets.symmetric(horizontal: Sizes.SIZE_4),
            ),
          ),
        ),
        Spacer(),
        Container(
          width: Sizes.WIDTH_56,
          height: Sizes.HEIGHT_56,
          child: CustomButton2(
            onPressed: () => _slideForward(),
            borderRadius: Sizes.RADIUS_8,
            icon: FeatherIcons.chevronRight,
          ),
        ),
      ],
    );
  }

  void _slideBackwards() {
    if (currentIndexPage < (pageLength - 1) && currentIndexPage != 0) {
      setState(() {
        currentIndexPage -= 1.toDouble();
      });
      movePageViewer(currentIndexPage);
    }
  }

  void _slideForward() {
    if (currentIndexPage < pageLength - 1) {
      setState(() {
        currentIndexPage += 1.toDouble();
      });
      movePageViewer(currentIndexPage);
    }
  }

  void movePageViewer(double position) {
    _pageController.animateToPage(
      position.toInt(),
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }
}
