import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class OnBoardingScreen3 extends StatefulWidget {
  @override
  _OnBoardingScreen3State createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  late double currentIndexPage;
  late int pageLength;
  List<String> onBoardingImageList = [
    ImagePath.YOGA_3,
    ImagePath.SUNRISE,
    ImagePath.JADE_YOGA,
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
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.PADDING_16,
              horizontal: Sizes.PADDING_16,
            ),
            child: Column(
              children: [
                _buildDotsIndicator(),
                Spacer(),
                _buildInfo(),
                Spacer(),
                _buildButtons(),
              ],
            ),
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
          style: theme.textTheme.headlineMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
        SpaceH16(),
        Text(
          StringConst.LOREM_IPSUM,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          StringConst.CONTINUE_WITH,
          style: theme.textTheme.titleMedium?.copyWith(
            color: AppColors.purple10,
          ),
        ),
        SpaceH16(),
        CustomButton(
          title: StringConst.EMAIL,
          color: AppColors.primaryColor,
          textStyle: theme.textTheme.titleLarge?.copyWith(
            color: AppColors.white,
          ),
          onPressed: () {},
        ),
        SpaceH16(),
        CustomButton(
          title: StringConst.FACEBOOK.toUpperCase(),
          color: AppColors.pink50,
          textStyle: theme.textTheme.titleLarge?.copyWith(
            color: AppColors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
