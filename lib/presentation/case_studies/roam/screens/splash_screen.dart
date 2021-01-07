import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercatalog/bloc/theme_bloc.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/bg_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/themes/roam_app_theme.dart';
import 'package:fluttercatalog/values/values.dart';

class RoamSplashScreen extends StatefulWidget {
  RoamSplashScreen({@required this.themeBloc});

  final ThemeBloc themeBloc;
  @override
  _RoamSplashScreenState createState() => _RoamSplashScreenState();
}

class _RoamSplashScreenState extends State<RoamSplashScreen> {
  ThemeBloc themeBloc;
  @override
  void initState() {
    super.initState();
    themeBloc = widget.themeBloc;
    themeBloc.selectedTheme.add(_buildLightTheme());
    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1500), () {
      ExtendedNavigator.root.popAndPush(Routes.onBoardingScreen);
    });
  }

  CurrentTheme _buildLightTheme() {
    return CurrentTheme('light', RoamAppTheme.lightThemeData);
  }

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        width: widthOfScreen,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: (heightOfScreen * 0.1)),
                child: SvgPicture.asset(
                  RoamImagePath.LEAF_2,
                  height: heightOfScreen * 0.025,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.25,
              child: Column(
                children: [
                  Container(
                    width: widthOfScreen,
                    height: heightOfScreen * 0.5,
                    child: Center(
                      child: SvgPicture.asset(
                        RoamImagePath.BG,
                        height: assignHeight(context: context, fraction: 0.5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.25,
              child: Container(
                width: widthOfScreen,
                height: heightOfScreen * 0.5,
                child: _buildIcons(context),
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.8,
              left: widthOfScreen * 0.25,
              child: SvgPicture.asset(
                RoamImagePath.LEAF_3,
                height: heightOfScreen * 0.04,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: heightOfScreen * 0.85,
              right: widthOfScreen * 0.25,
              child: SvgPicture.asset(
                RoamImagePath.LEAF_1,
                height: heightOfScreen * 0.025,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcons(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1);
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              RoamStringConst.APP_NAME,
              style: theme.textTheme.headline4
                  .copyWith(color: RoamAppColors.accentColor),
            ),
            SpaceW48(),
            BgCard(
              child: Icon(
                FeatherIcons.mapPin,
                size: Sizes.ICON_SIZE_30,
                color: RoamAppColors.green100,
              ),
            ),
          ],
        ),
        SpaceH40(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BgCard(
              child: Icon(
                FeatherIcons.share2,
                size: Sizes.ICON_SIZE_30,
                color: RoamAppColors.orange50,
              ),
            ),
            BgCard(
              width: widthOfScreen * 0.4,
              height: heightOfScreen * 0.2,
              child: SvgPicture.asset(
                RoamImagePath.EARTH,
                width: widthOfScreen * 0.4,
                height: heightOfScreen * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: Sizes.MARGIN_60),
              child: BgCard(
                child: Center(
                  child: Image.asset(
                    RoamImagePath.NAVIGATION,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SpaceH40(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BgCard(
              child: Center(
                child: Image.asset(
                  RoamImagePath.AIR_PLANE,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
