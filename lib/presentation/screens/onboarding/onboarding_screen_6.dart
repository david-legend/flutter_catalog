import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class OnBoardingScreen6 extends StatefulWidget {
  @override
  _OnBoardingScreen6State createState() => _OnBoardingScreen6State();
}

class _OnBoardingScreen6State extends State<OnBoardingScreen6> {
  PageController _pageController = PageController();
  double currentIndexPage;
  int pageLength;
  List<String> onBoardingImageList = [
    ImagePath.YOGA_ASIA,
    ImagePath.YOGA_2,
    ImagePath.SUNRISE,
  ];

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = onBoardingImageList.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.PADDING_16,
            vertical: Sizes.PADDING_16,
          ),
          child: Column(
            children: [
              Container(
                height: assignHeight(
                  context: context,
                  fraction: 0.5,
                  subs: Sizes.SAFE_AREA_MARGIN,
                ),
                child: PageView(
                  controller: _pageController,
                  children: _buildBackgroundImages(onBoardingImageList),
                  onPageChanged: (value) {
                    setState(() => currentIndexPage = value.toDouble());
                  },
                ),
              ),
              SpaceH30(),
              _buildInfo(),
              Spacer(),
              _buildButton()
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBackgroundImages(List<String> imageList) {
    List<Widget> images = [];

    for (int index = 0; index < imageList.length; index++) {
      images.add(
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(Sizes.RADIUS_80),
            topRight: const Radius.circular(Sizes.RADIUS_80),
          ),
          child: Image.asset(
            imageList[index],
            width: assignWidth(context: context, fraction: 1),
            height: assignHeight(context: context, fraction: 0.65),
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    return images;
  }

  Widget _buildInfo() {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringConst.MEET_UP_UI_KIT, style: theme.textTheme.headline4),
        SpaceH8(),
        Text(
          StringConst.LOREM_IPSUM,
          style: theme.textTheme.bodyText2.copyWith(
            color: AppColors.blackShade6,
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return Row(
      children: [
        DotsIndicator(
          dotsCount: pageLength,
          position: currentIndexPage,
          decorator: DotsDecorator(
            color: AppColors.indigo50,
            activeColor: AppColors.primaryColor,
          ),
        ),
        Spacer(),
        FloatingActionButton(
          heroTag: "backward",
          onPressed: () => _slideBackwards(),
          backgroundColor: AppColors.indigo100,
          elevation: Sizes.ELEVATION_0,
          child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
        ),
        SpaceW8(),
        FloatingActionButton(
          heroTag: "forward",
          onPressed: () => _slideForward(),
          backgroundColor: AppColors.primaryColor,
          elevation: Sizes.ELEVATION_0,
          child: Icon(
            Icons.arrow_forward,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  void _slideBackwards() {
    if (currentIndexPage < pageLength && currentIndexPage != 0) {
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
