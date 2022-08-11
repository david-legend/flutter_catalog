import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class OnBoardingScreen1 extends StatefulWidget {
  @override
  _OnBoardingScreen1State createState() => _OnBoardingScreen1State();
}

//TODO:: Fix button issues --> When an inkwell is added as a parent for the button function, the pageviewer stops working
class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  late double currentIndexPage;
  late int pageLength;
  List<String> onBoardingImageList = [
    ImagePath.JADE_YOGA,
    ImagePath.MARIA,
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
      body: Stack(
        children: [
          Container(
            height: assignHeight(context: context, fraction: 0.8),
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
          Padding(
            padding: const EdgeInsets.only(
              top: Sizes.PADDING_24,
              left: Sizes.PADDING_16,
              right: Sizes.PADDING_16,
            ),
            child: _buildDotsIndicator(),
          ),
          _buildInfo(),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: assignHeight(context: context, fraction: 0.1),
          child: DotsIndicator(
            dotsCount: pageLength,
            position: currentIndexPage,
            decorator: DotsDecorator(
              color: AppColors.lightBlue200,
              activeColor: AppColors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            StringConst.SKIP,
            style: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        )
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
          height: assignHeight(context: context, fraction: 0.8),
          fit: BoxFit.cover,
        ),
      );
    }
    return images;
  }

  Widget _buildInfo() {
    ThemeData theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: assignHeight(context: context, fraction: 0.25),
        width: assignWidth(context: context, fraction: 1.0),
        margin: EdgeInsets.only(
          bottom: assignHeight(context: context, fraction: 0.1),
          left: Sizes.MARGIN_30,
        ),
        decoration: BoxDecoration(
          color: AppColors.violet400,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.RADIUS_16),
            bottomLeft: Radius.circular(Sizes.RADIUS_60),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.PADDING_32,
            left: Sizes.PADDING_40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConst.TUTORIAL.toUpperCase(),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppColors.purple10,
                ),
              ),
              Text(
                StringConst.WELCOME_TO_MEET_UP,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    ThemeData theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: assignWidth(context: context, fraction: 0.4),
        height: assignHeight(context: context, fraction: 0.1),
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.PADDING_16,
          vertical: Sizes.PADDING_16,
        ),
        margin: EdgeInsets.only(
          bottom: assignHeight(context: context, fraction: 0.05),
        ),
        decoration: BoxDecoration(
          color: AppColors.pink50,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.RADIUS_40),
            bottomLeft: Radius.circular(Sizes.RADIUS_40),
          ),
        ),
        child: Row(
          children: [
            Text(
              StringConst.GET_STARTED.toUpperCase(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
            SpaceW4(),
            Icon(Icons.arrow_forward, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}
