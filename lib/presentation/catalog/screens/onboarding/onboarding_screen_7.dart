import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';

class OnBoardingScreen7 extends StatefulWidget {
  @override
  _OnBoardingScreen7State createState() => _OnBoardingScreen7State();
}

class _OnBoardingScreen7State extends State<OnBoardingScreen7> {
  CarouselController _carouselController = CarouselController();

  int itemLength = 4;
  double currentIndexPage = 0;
  int pageLength;

  @override
  void initState() {
    super.initState();
    pageLength = itemLength;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: assignHeight(context: context, fraction: 0.7),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: assignHeight(context: context, fraction: 0.6),
                  autoPlay: false,
                  aspectRatio: 1.0,
                  viewportFraction: 0.75,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() => currentIndexPage = index.toDouble());
                  },
                ),
                carouselController: _carouselController,
                items: _buildCarouselItems(4),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotsIndicator(
                  dotsCount: pageLength,
                  position: currentIndexPage,
                  decorator: DotsDecorator(
                    color: AppColors.indigo50,
                    activeColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            _buildButton(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _carouselItem() {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          const Radius.circular(Sizes.RADIUS_80),
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            ImagePath.COMPASS_LOGO,
            height: assignHeight(context: context, fraction: 0.25),
            width: assignHeight(context: context, fraction: 0.25),
            fit: BoxFit.cover,
          ),
          SpaceH8(),
          Text(
            StringConst.GET_STARTED,
            style: theme.textTheme.headline6,
          ),
          SpaceH8(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_12),
            child: Text(
              StringConst.LOREM_IPSUM,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText2.copyWith(
                color: AppColors.blackShade6,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  List<Widget> _buildCarouselItems(int itemsLength) {
    List<Widget> items = [];

    for (int index = 0; index < itemsLength; index++) {
      items.add(_carouselItem());
    }

    return items;
  }

  Widget _buildButton() {
    ThemeData theme = Theme.of(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: assignWidth(context: context, fraction: 0.3),
        height: assignHeight(context: context, fraction: 0.08),
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.PADDING_16,
          vertical: Sizes.PADDING_16,
        ),
        margin: EdgeInsets.only(
          bottom: assignHeight(context: context, fraction: 0.05),
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.RADIUS_40),
            bottomLeft: Radius.circular(Sizes.RADIUS_40),
          ),
        ),
        child: InkWell(
          onTap: () => _slideForward(),
          child: Row(
            children: [
              Text(
                StringConst.NEXT.toUpperCase(),
                style: theme.textTheme.subtitle2.copyWith(
                  color: AppColors.white,
                ),
              ),
              SpaceW4(),
              Icon(Icons.arrow_forward, color: AppColors.white),
            ],
          ),
        ),
      ),
    );
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
    _carouselController.animateToPage(
      position.toInt(),
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }
}
