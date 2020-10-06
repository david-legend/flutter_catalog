import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/custom_painters.dart';
import 'package:fluttercatalog/widgets/custom_shape_clippers.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class LoginScreen5 extends StatefulWidget {
  @override
  _LoginScreen5State createState() => _LoginScreen5State();
}

class _LoginScreen5State extends State<LoginScreen5> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          child: Stack(
            children: <Widget>[
              _drawCircles(),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: heightOfScreen * 0.1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          StringConst.LOG_IN_3,
                          style: theme.textTheme.headline4.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        SpaceH8(),
                        InkWell(
                          onTap: () => ExtendedNavigator.root.push(
                            Routes.signUpScreen5,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: StringConst.DONT_HAVE_AN_ACCOUNT,
                                  style: theme.textTheme.subtitle2.copyWith(
                                    color: AppColors.black,
                                    fontSize: Sizes.TEXT_SIZE_16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: StringConst.SIGN_UP.toUpperCase(),
                                  style: theme.textTheme.subtitle2.copyWith(
                                    color: AppColors.pinkShade3,
                                    fontSize: Sizes.TEXT_SIZE_16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: heightOfScreen * 0.05,
                        ),
                        _buildForm(context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: heightOfScreen * 0.1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_20),
                    child: Column(
                      children: <Widget>[
                        CustomButton(
                          title: StringConst.LOGIN_WITH_FACEBOOK,
                          color: AppColors.white,
                          borderRadius: Sizes.RADIUS_4,
                          hasIcon: true,
                          elevation: Sizes.ELEVATION_0,
                          height: Sizes.HEIGHT_60,
                          textStyle: theme.textTheme.button.copyWith(
                            color: AppColors.facebookBlue,
                            fontWeight: FontWeight.w800,
                          ),
                          borderSide: Borders.customBorder(
                            color: AppColors.grey,
                          ),
                          icon: Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: AppColors.facebookBlue,
                          ),
                          onPressed: () {},
                        ),
                        SpaceH20(),
                        CustomButton(
                          title: StringConst.LOG_IN_3,
                          borderRadius: Sizes.RADIUS_4,
                          color: AppColors.redShade4,
                          height: Sizes.HEIGHT_60,
                          textStyle: theme.textTheme.button.copyWith(
                              color: AppColors.white,
                              fontSize: Sizes.TEXT_SIZE_16),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawCircles() {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Container(
      height: heightOfScreen * 0.2,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: SemiCircleShapeClipper2(),
            child: Container(
              height: heightOfScreen * 0.2,
              width: widthOfScreen,
              color: AppColors.redShade5,
            ),
          ),
          Container(
            height: heightOfScreen * 0.2,
            width: widthOfScreen,
            child: Opacity(
              opacity: 0.9,
              child: CustomPaint(
                painter: DrawCircle(
                    offset: Offset(widthOfScreen * 0.7, heightOfScreen * 0.1),
                    radius: 70.0,
                    color: AppColors.blueShade2),
              ),
            ),
          ),
          ClipPath(
            clipper: SemiCircleShapeClipper(),
            child: Opacity(
              opacity: 0.95,
              child: Container(
                height: heightOfScreen * 0.2,
                width: widthOfScreen,
                color: AppColors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasTitle: true,
          title: StringConst.USER_NAME_2,
          titleStyle: theme.textTheme.subtitle1.copyWith(
            color: AppColors.greyShade8,
            fontSize: Sizes.TEXT_SIZE_14,
          ),
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.blackShade10),
          enabledBorder: Borders.customUnderlineInputBorder(),
          focusedBorder:
              Borders.customUnderlineInputBorder(color: AppColors.pinkShade3),
          textStyle: Styles.customTextStyle(color: AppColors.blackShade10),
        ),
        SpaceH16(),
        CustomTextFormField(
          hasTitle: true,
          title: StringConst.PASSWORD_2,
          titleStyle: theme.textTheme.subtitle1.copyWith(
            color: AppColors.greyShade8,
            fontSize: Sizes.TEXT_SIZE_14,
          ),
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.blackShade10),
          enabledBorder: Borders.customUnderlineInputBorder(),
          focusedBorder:
              Borders.customUnderlineInputBorder(color: AppColors.pinkShade3),
          textStyle: Styles.customTextStyle(color: AppColors.blackShade10),
          obscured: true,
        ),
        SpaceH8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              StringConst.FORGOT_PASSWORD,
              style: theme.textTheme.title
                  .copyWith(color: AppColors.greyShade8, fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
