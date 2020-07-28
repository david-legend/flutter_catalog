import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/custom_divider.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class LoginScreen8 extends StatefulWidget {
  @override
  _LoginScreen8State createState() => _LoginScreen8State();
}

class _LoginScreen8State extends State<LoginScreen8> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: EdgeInsets.only(top: heightOfScreen * 0.2),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Sizes.RADIUS_24),
                  topRight: Radius.circular(Sizes.RADIUS_24),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: widthOfScreen * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          StringConst.LOG_IN_2,
                          style: theme.textTheme.headline4.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        SpaceH8(),
                        CustomDivider(
                          color: AppColors.violetShade2,
                          height: Sizes.HEIGHT_3,
                          width: Sizes.WIDTH_40,
                        ),
                        SpaceH20(),
                        Text(
                          StringConst.LOGIN_MSG,
                          style: theme.textTheme.bodyText1.copyWith(
                            color: AppColors.greyShade8,
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.TEXT_SIZE_14,
                          ),
                        ),
                        SpaceH24(),
                        _buildForm(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Image.asset(
          ImagePath.GYM,
          height: heightOfScreen * 0.3,
          width: widthOfScreen,
          fit: BoxFit.cover,
        ),
        Container(
          height: heightOfScreen * 0.3,
          width: widthOfScreen,
          decoration: BoxDecoration(gradient: Gradients.headerOverlayGradient),
        ),
        Container(
          margin: EdgeInsets.only(
            top: heightOfScreen * 0.075,
            left: widthOfScreen * 0.1,
          ),
          child: Text(
            StringConst.FITNESS_GYM,
            style: theme.textTheme.headline4.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.greyShade8),
          textStyle: Styles.customTextStyle(color: AppColors.greyShade8),
          labelText: StringConst.EMAIL_2,
          labelStyle: theme.textTheme.subtitle1.copyWith(
            color: AppColors.violetShade2,
          ),
          hasSuffixIcon: true,
          suffixIcon: Icon(
            Icons.mail,
            color: AppColors.greyShade8,
          ),
          border:
              Borders.customOutlineInputBorder(borderRadius: Sizes.RADIUS_4),
          enabledBorder:
              Borders.customOutlineInputBorder(borderRadius: Sizes.RADIUS_4),
          focusedBorder: Borders.customOutlineInputBorder(
            borderRadius: Sizes.RADIUS_4,
            color: AppColors.violetShade2,
            width: Sizes.WIDTH_2,
          ),
          hintText: StringConst.EMAIL_2,
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(
            color: AppColors.greyShade8,
          ),
          textStyle: Styles.customTextStyle(color: AppColors.greyShade8),
          labelText: StringConst.PASSWORD,
          labelStyle: theme.textTheme.subtitle1.copyWith(
            color: AppColors.violetShade2,
          ),
          hintText: StringConst.PASSWORD_HINT_TEXT,
          hasSuffixIcon: true,
          suffixIcon: Icon(
            Icons.lock,
            color: AppColors.greyShade8,
          ),
          border:
              Borders.customOutlineInputBorder(borderRadius: Sizes.RADIUS_4),
          enabledBorder:
              Borders.customOutlineInputBorder(borderRadius: Sizes.RADIUS_4),
          focusedBorder: Borders.customOutlineInputBorder(
            borderRadius: Sizes.RADIUS_4,
            color: AppColors.violetShade2,
            width: Sizes.WIDTH_2,
          ),
          obscured: true,
        ),
        SpaceH16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              StringConst.FORGOT_PASSWORD,
              style: theme.textTheme.subtitle1.copyWith(
                color: AppColors.black,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
            ),
          ],
        ),
        SpaceH24(),
        CustomButton(
          title: StringConst.LOG_IN_3,
          color: AppColors.violetShade2,
          borderRadius: Sizes.ELEVATION_4,
          textStyle: theme.textTheme.button.copyWith(
            color: AppColors.white,
            fontSize: Sizes.TEXT_SIZE_16,
          ),
          onPressed: () {},
        ),
        SizedBox(
          height: heightOfScreen * 0.03,
        ),
        _buildSeparator(context),
        SizedBox(
          height: heightOfScreen * 0.03,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomButton(
                title: StringConst.FACEBOOK,
                textStyle: theme.textTheme.button
                    .copyWith(color: AppColors.greyShade8),
                hasIcon: true,
                color: AppColors.white,
                elevation: Sizes.ELEVATION_0,
                borderRadius: Sizes.ELEVATION_4,
                borderSide: Borders.customBorder(color: AppColors.grey),
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                  color: AppColors.facebookBlue,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: widthOfScreen * 0.1),
            Expanded(
              child: CustomButton(
                title: StringConst.GOOGLE,
                hasIcon: true,
                color: AppColors.white,
                elevation: Sizes.ELEVATION_0,
                borderRadius: Sizes.ELEVATION_4,
                borderSide: Borders.customBorder(color: AppColors.grey),
                textStyle: theme.textTheme.button
                    .copyWith(color: AppColors.greyShade8),
                icon: Image.asset(
                  ImagePath.GOOGLE_LOGO,
                  height: Sizes.HEIGHT_24,
                  width: Sizes.WIDTH_24,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        SizedBox(
          height: heightOfScreen * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              StringConst.DONT_HAVE_AN_ACCOUNT,
              style: theme.textTheme.bodyText1.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w600,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
            ),
            SpaceW4(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  StringConst.REGISTER,
                  style: theme.textTheme.headline4.copyWith(
                    color: AppColors.orangeShade5,
                    fontSize: Sizes.TEXT_SIZE_14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SpaceH2(),
                CustomDivider(
                  color: AppColors.orangeShade5,
                  height: Sizes.HEIGHT_2,
                  width: Sizes.WIDTH_50,
                ),
              ],
            ),
          ],
        ),
        SpaceH20(),
      ],
    );
  }

  Widget _buildSeparator(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomDivider(
            color: Colors.grey[300],
            width: widthOfScreen * 0.15,
            height: Sizes.HEIGHT_2,
          ),
          SpaceW16(),
          Text(
            StringConst.OR,
            style: textTheme.subtitle1.copyWith(
              color: AppColors.greyShade8,
            ),
          ),
          SpaceW16(),
          CustomDivider(
            color: Colors.grey[300],
            width: widthOfScreen * 0.15,
            height: Sizes.HEIGHT_2,
          ),
        ],
      ),
    );
  }
}
