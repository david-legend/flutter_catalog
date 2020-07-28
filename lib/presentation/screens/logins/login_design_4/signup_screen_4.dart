import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/clipShadowPath.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/custom_shape_clippers.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class SignUpScreen4 extends StatefulWidget {
  @override
  _SignUpScreen4State createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  bool isSwitched = false;

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
              ClipShadowPath(
                clipper: LoginDesign4ShapeClipper(),
                shadow: Shadow(blurRadius: 24, color: AppColors.blue),
                child: Container(
                  height: heightOfScreen * 0.4,
                  width: widthOfScreen,
                  color: AppColors.blue,
                  child: Container(
                    margin: EdgeInsets.only(left: Sizes.MARGIN_24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: heightOfScreen * 0.1,
                        ),
                        Text(
                          StringConst.HELLO_2,
                          style: theme.textTheme.headline6.copyWith(
                            fontSize: Sizes.TEXT_SIZE_20,
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          StringConst.SIGN_UP_3,
                          style: theme.textTheme.headline4.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.all(Sizes.PADDING_0),
                children: <Widget>[
                  SizedBox(
                    height: heightOfScreen * 0.45,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_20),
                    child: _buildForm(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.USER_NAME,
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.EMAIL_ADDRESS,
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.PASSWORD,
          obscured: true,
          hasSuffixIcon: true,
          suffixIcon: Icon(
            FeatherIcons.lock,
            color: AppColors.blackShade10,
          ),
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        Row(
          children: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: AppColors.greyShade6,
              activeColor: AppColors.blue,
            ),
            Text(
              StringConst.ACCEPT_TERMS,
              style: theme.textTheme.subtitle2.copyWith(
                color: AppColors.blackShade10,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
            ),
          ],
        ),
        SpaceH8(),
        Container(
          width: Sizes.WIDTH_180,
          decoration: Decorations.customBoxDecoration(blurRadius: 10),
          child: CustomButton(
            title: StringConst.SIGN_UP,
            elevation: Sizes.ELEVATION_12,
            textStyle: theme.textTheme.subtitle.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
            color: AppColors.blue,
            height: Sizes.HEIGHT_40,
            onPressed: () {},
          ),
        ),
        SpaceH16(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: AppColors.twitterBlue,
              onPressed: () {},
              mini: true,
              child: Icon(
                FeatherIcons.twitter,
                color: AppColors.white,
                size: Sizes.ICON_SIZE_18,
              ),
              heroTag: "twitter",
            ),
            SpaceW16(),
            FloatingActionButton(
              backgroundColor: AppColors.googleRed,
              onPressed: () {},
              mini: true,
              child: Icon(
                FontAwesomeIcons.google,
                color: AppColors.white,
                size: Sizes.ICON_SIZE_18,
              ),
              heroTag: "google",
            ),
            SpaceW16(),
            FloatingActionButton(
              backgroundColor: AppColors.linkedInBlue,
              onPressed: () {},
              mini: true,
              child: Icon(
                FeatherIcons.linkedin,
                color: AppColors.white,
                size: Sizes.ICON_SIZE_18,
              ),
              heroTag: "linkedIn",
            ),
          ],
        ),
      ],
    );
  }
}
