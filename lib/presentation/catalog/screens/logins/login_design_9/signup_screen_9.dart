import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_painters.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/tear_drop_button.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class SignUpScreen9 extends StatefulWidget {
  @override
  _SignUpScreen9State createState() => _SignUpScreen9State();
}

class _SignUpScreen9State extends State<SignUpScreen9> {
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
        backgroundColor: AppColors.deepBlue200,
        body: Container(
          child: ListView(
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
                        Container(
                          margin: EdgeInsets.only(top: tearDropButtonRadius),
                          child: TearDropButton(
                            buttonText: StringConst.SIGN_IN_2,
                            radius: tearDropButtonRadius,
                            tearDropAlignment: TearDropAlignment.bottomRight,
                            style: PaintingStyle.stroke,
                            color: AppColors.indigo200,
                            buttonTextStyle: theme.textTheme.bodyLarge?.copyWith(
                              color: AppColors.indigo200,
                            ),
                            onTap: () {
                              AutoRouter.of(context).pop();
                            },
                          ),
                        ),
                        SpaceW16(),
                        TearDropButton(
                          buttonText: StringConst.SIGN_UP_4,
                          radius: tearDropButtonRadius,
                          tearDropAlignment: TearDropAlignment.topLeft,
                          hasShadow: true,
                          onTap: () {},
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
                  StringConst.ALREADY_HAVE_AN_ACCOUNT,
                  style: theme.textTheme.bodyLarge?.copyWith(
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
                  StringConst.GET_STARTED,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  StringConst.CREATE_ACCOUNT,
                  style: theme.textTheme.bodyLarge?.copyWith(
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
    TextStyle? titleTextStyle = theme.textTheme.titleSmall?.copyWith(
      color: AppColors.orangeShade6,
    );
    TextStyle? hintTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: AppColors.indigo200,
    );
    UnderlineInputBorder customUnderlineInputBorder =
    Borders.customUnderlineInputBorder(
      color: AppColors.indigo200,
    );

    return Column(
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
              size: Sizes.ICON_SIZE_18,
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
              size: Sizes.ICON_SIZE_18,
            ),
          ),
          obscured: true,
          border: customUnderlineInputBorder,
          focusedBorder: customUnderlineInputBorder,
          enabledBorder: customUnderlineInputBorder,
          hintText: StringConst.PASSWORD_HINT_TEXT,
          hintTextStyle: hintTextStyle,
        ),
        SpaceH8(),
        CustomTextFormField(
          hasTitle: true,
          title: StringConst.PASSWORD_2.toUpperCase(),
          titleStyle: titleTextStyle,
          textStyle: hintTextStyle,
          hasPrefixIcon: true,
          prefixIcon: Container(
            transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
            child: Icon(
              FeatherIcons.key,
              color: AppColors.orangeShade6,
              size: Sizes.ICON_SIZE_18,
            ),
          ),
          obscured: true,
          border: customUnderlineInputBorder,
          focusedBorder: customUnderlineInputBorder,
          enabledBorder: customUnderlineInputBorder,
          hintText: StringConst.PASSWORD_HINT_TEXT,
          hintTextStyle: hintTextStyle,
        ),
      ],
    );
  }
}
