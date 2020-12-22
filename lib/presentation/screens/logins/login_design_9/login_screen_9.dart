import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_painters.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:fluttercatalog/widgets/tear_drop_button.dart';

class LoginScreen9 extends StatefulWidget {
  @override
  _LoginScreen9State createState() => _LoginScreen9State();
}

class _LoginScreen9State extends State<LoginScreen9> {
  @override
  Widget build(BuildContext context) {
    double tearDropButtonRadius =
        assignHeight(context: context, fraction: 0.07);
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: AppColors.deepBlue200,
        body: Container(
          child: Column(
            children: [
              _drawTearDrop(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
                child: _buildForm(),
              ),
              SpaceH20(),
              Container(
                height: tearDropButtonRadius * 3,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TearDropButton(
                          buttonText: StringConst.SIGN_IN_2,
                          radius: tearDropButtonRadius,
                          tearDropAlignment: TearDropAlignment.topRight,
                          hasShadow: true,
                          onTap: () {},
                        ),
                        SpaceW16(),
                        Container(
                          margin: EdgeInsets.only(top: tearDropButtonRadius),
                          child: TearDropButton(
                            buttonText: StringConst.SIGN_UP_4,
                            radius: tearDropButtonRadius,
                            tearDropAlignment: TearDropAlignment.bottomLeft,
                            style: PaintingStyle.stroke,
                            color: AppColors.indigo200,
                            buttonTextStyle: theme.textTheme.bodyText1.copyWith(
                              color: AppColors.indigo200,
                            ),
                            onTap: () {
                              ExtendedNavigator.root.push(Routes.signUpScreen9);
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SpaceH20(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  StringConst.DONT_HAVE_AN_ACCOUNT,
                  style: theme.textTheme.bodyText1.copyWith(
                    color: AppColors.indigo200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawTearDrop() {
    double radius = assignWidth(context: context, fraction: 0.35);
    ThemeData theme = Theme.of(context);
    return Container(
      height: radius * 2,
      width: widthOfScreen(context),
      child: Stack(
        children: [
          Container(
            height: radius,
            width: radius,
            color: AppColors.orangeShade6,
            child: CustomPaint(
              painter: DrawCircle(
                offset: Offset(
                  radius,
                  radius,
                ),
                radius: radius,
                color: AppColors.orangeShade6,
              ),
            ),
          ),
          Container(
            width: radius * 2,
            padding: const EdgeInsets.only(left: Sizes.PADDING_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringConst.LETS_GET_STARTED,
                  style: theme.textTheme.headline5.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  StringConst.LOGIN_MSG_2,
                  style: theme.textTheme.bodyText1.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    ThemeData theme = Theme.of(context);
    TextStyle titleTextStyle = theme.textTheme.subtitle2.copyWith(
      color: AppColors.orangeShade6,
    );
    TextStyle hintTextStyle = theme.textTheme.bodyText1.copyWith(
      color: AppColors.indigo200,
    );
    UnderlineInputBorder customUnderlineInputBorder =
        Borders.customUnderlineInputBorder(
      color: AppColors.indigo200,
    );
    return Container(
      child: Column(
        children: [
          CustomTextFormField(
            hasTitle: true,
            titleStyle: titleTextStyle,
            title: StringConst.EMAIL,
            textStyle: hintTextStyle,
            hasPrefixIcon: true,
            prefixIcon: Container(
              transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
              child: Icon(
                Icons.email,
                color: AppColors.orangeShade6,
                size: Sizes.ICON_SIZE_20,
              ),
            ),
            border: customUnderlineInputBorder,
            focusedBorder: customUnderlineInputBorder,
            enabledBorder: customUnderlineInputBorder,
            hintText: StringConst.EMAIL_HINT_TEXT,
            hintTextStyle: hintTextStyle,
          ),
          SpaceH8(),
          CustomTextFormField(
            hasTitle: true,
            title: StringConst.PASSWORD_2,
            titleStyle: titleTextStyle,
            textStyle: hintTextStyle,
            hasPrefixIcon: true,
            prefixIcon: Container(
              transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
              child: Icon(
                FeatherIcons.key,
                color: AppColors.orangeShade6,
                size: Sizes.ICON_SIZE_20,
              ),
            ),
            obscured: true,
            border: customUnderlineInputBorder,
            focusedBorder: customUnderlineInputBorder,
            enabledBorder: customUnderlineInputBorder,
            hintText: StringConst.PASSWORD_HINT_TEXT,
            hintTextStyle: hintTextStyle,
          ),
          SpaceH16(),
          InkWell(
            onTap: () {},
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                StringConst.FORGOT_PASSWORD,
                style: titleTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
