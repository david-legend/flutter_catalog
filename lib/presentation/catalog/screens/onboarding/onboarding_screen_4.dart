import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class OnBoardingScreen4 extends StatefulWidget {
  @override
  _OnBoardingScreen4State createState() => _OnBoardingScreen4State();
}

class _OnBoardingScreen4State extends State<OnBoardingScreen4> {
  double currentIndexPage;
  int pageLength;
  List<String> onBoardingImageList = [
    ImagePath.SUNRISE,
    ImagePath.JADE_YOGA,
    ImagePath.YOGA_3,
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
      body: Stack(
        children: [
          Container(
            height: assignHeight(context: context, fraction: 1),
            decoration: BoxDecoration(
              gradient: Gradients.darkOverlayGradient,
            ),
            child: PageView(
              children: _buildBackgroundImages(onBoardingImageList),
              onPageChanged: (value) {
                setState(() => currentIndexPage = value.toDouble());
              },
            ),
          ),
          Column(
            children: [
              _buildDotsIndicator(),
              Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: Sizes.PADDING_16,
                  horizontal: Sizes.PADDING_16,
                ),
                child: _buildInfo(),
              ),
              SpaceH20(),
              _buildButtons(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: assignHeight(context: context, fraction: 0.1),
          child: DotsIndicator(
            dotsCount: pageLength,
            position: currentIndexPage,
            decorator: DotsDecorator(
              color: AppColors.black50,
              activeColor: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildBackgroundImages(List<String> imageList) {
    List<Widget> images = [];

    for (int index = 0; index < imageList.length; index++) {
      images.add(
        Image.asset(
          imageList[index],
          width: assignWidth(context: context, fraction: 1),
          height: assignHeight(context: context, fraction: 1),
          fit: BoxFit.cover,
        ),
      );
    }
    return images;
  }

  Widget _buildInfo() {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          StringConst.WELCOME_TO_MEET_UP,
          style: theme.textTheme.headline5.copyWith(
            color: AppColors.white,
          ),
        ),
        SpaceH16(),
        Text(
          StringConst.LOREM_IPSUM,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText2.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    ThemeData theme = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: assignHeight(context: context, fraction: 0.2),
            padding: const EdgeInsets.only(top: Sizes.PADDING_24),
            decoration: BoxDecoration(
              color: AppColors.indigo100,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(Sizes.RADIUS_80),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringConst.LOG_IN,
                  style: theme.textTheme.subtitle1.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: assignHeight(context: context, fraction: 0.1),
            decoration: BoxDecoration(
              color: AppColors.violet400,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(Sizes.RADIUS_60),
              ),
            ),
            child: Center(
              child: Text(
                StringConst.SIGN_UP,
                style: theme.textTheme.subtitle1.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
