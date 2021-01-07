import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';

class OnBoardingScreen2 extends StatefulWidget {
  @override
  _OnBoardingScreen2State createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  double currentIndexPage;
  int pageLength;
  List<String> onBoardingImageList = [
    ImagePath.YOGA_2,
    ImagePath.JADE_YOGA,
    ImagePath.YOGA_2,
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
            height: assignHeight(context: context, fraction: 0.6),
            child: PageView(
              children: _buildBackgroundImages(onBoardingImageList),
              onPageChanged: (value) {
                setState(() => currentIndexPage = value.toDouble());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.PADDING_16,
            ),
            child: _buildDotsIndicator(),
          ),
          _buildInfo(),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Container(
      height: assignHeight(context: context, fraction: 0.6),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: assignHeight(context: context, fraction: 0.1),
              child: DotsIndicator(
                dotsCount: pageLength,
                position: currentIndexPage,
                decorator: DotsDecorator(
                  color: AppColors.indigo50,
                  activeColor: AppColors.white,
                ),
              ),
            ),
          ],
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
            bottomLeft: const Radius.circular(Sizes.RADIUS_60),
          ),
          child: Image.asset(
            imageList[index],
            width: assignWidth(context: context, fraction: 1),
            height: assignHeight(context: context, fraction: 0.6),
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    return images;
  }

  Widget _buildInfo() {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: assignHeight(context: context, fraction: 0.6),
      ),
      child: Container(
        height: assignHeight(context: context, fraction: 0.4),
        padding: EdgeInsets.all(Sizes.PADDING_16),
        child: Column(
          children: [
            SpaceH8(),
            Text(
              StringConst.MEET_UP.toUpperCase(),
              style: theme.textTheme.subtitle2.copyWith(
                color: AppColors.greyShade6,
              ),
            ),
            SpaceH8(),
            Text(StringConst.WELCOME, style: theme.textTheme.headline5),
            SpaceH8(),
            Text(
              StringConst.LOREM_IPSUM,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText2.copyWith(
                color: AppColors.blackShade6,
              ),
            ),
            Spacer(),
            Container(
              width: assignWidth(context: context, fraction: 0.25),
              child: CustomButton(
                title: StringConst.NEXT,
                color: AppColors.primaryColor,
                textStyle: theme.textTheme.subtitle1.copyWith(
                  color: AppColors.white,
                ),
                onPressed: () {},
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
