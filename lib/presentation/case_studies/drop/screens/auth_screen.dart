import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/CustomBubbleTabIndicator.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_button.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_logo.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

const double kPadding = Sizes.PADDING_24;

//TODO:: add borders bubbleTabIndicator
class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double logoSize = Sizes.WIDTH_100;
    double widthOfScreen = assignWidth(context: context, fraction: 1);
    double heightOfScreen =
        assignHeight(context: context, fraction: 1) - Sizes.SAFE_AREA_MARGIN;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: Sizes.SAFE_AREA_MARGIN),
          child: ListView(
            children: [
              SizedBox(
                height: heightOfScreen * 0.05,
              ),
              Center(
                child: Column(
                  children: [
                    DropLogo(),
                    Text(
                      DropStringConst.APP_NAME.toUpperCase(),
                      style: theme.textTheme.headline4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightOfScreen * 0.05,
              ),
              Container(
                height: heightOfScreen * 0.7,
                decoration: Decorations.primaryDecoration,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding,
                        vertical: Sizes.PADDING_16,
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: DropAppColors.primaryText,
                        unselectedLabelColor: DropAppColors.accentPurpleColor,
                        labelStyle: theme.textTheme.subtitle1.copyWith(
                          color: DropAppColors.primaryText,
                        ),
                        unselectedLabelStyle:
                            theme.textTheme.subtitle1.copyWith(
                          color: DropAppColors.accentPurpleColor,
                        ),
                        indicator: CustomBubbleTabIndicator(
                          indicatorHeight: Sizes.HEIGHT_40,
                          indicatorColor: DropAppColors.white,
                          tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        ),
                        tabs: [
                          Tab(
                            text: DropStringConst.LOG_IN_2.toUpperCase(),
                          ),
                          Tab(
                            text: DropStringConst.SIGN_UP.toUpperCase(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildLogin(context),
                          _buildSignUp(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "Logo Goes Here",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
        SpaceH16(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 75),
          child: Center(
            child: Placeholder(
              fallbackWidth: 150,
              fallbackHeight: 150,
              strokeWidth: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogin(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle hintTextStyle = theme.textTheme.subtitle1;
    TextStyle formTextStyle = theme.textTheme.subtitle1;

    return Container(
      padding: const EdgeInsets.only(left: kPadding),
      child: Column(
        children: [
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: DropStringConst.EMAIL_2,
            prefixIconColor: DropAppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            filled: false,
          ),
          SpaceH16(),
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: DropStringConst.PASSWORD,
            prefixIconColor: DropAppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            obscured: true,
            filled: false,
          ),
          Spacer(),
          DropButton(
            onTap: () {
              ExtendedNavigator.root.push(Routes.verificationScreen);
            },
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.LOG_IN,
            textStyle: theme.textTheme.subtitle1.copyWith(
              color: DropAppColors.white,
            ),
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.LOG_IN_WITH_GOOGLE,
            color: DropAppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.LOG_IN_WITH_FACEBOOK,
            color: DropAppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle hintTextStyle = theme.textTheme.subtitle1;
    TextStyle formTextStyle = theme.textTheme.subtitle1;

    return Container(
      padding: const EdgeInsets.only(left: kPadding),
      child: Column(
        children: [
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: DropStringConst.EMAIL_2,
            prefixIconColor: DropAppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            filled: false,
          ),
          SpaceH16(),
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: DropStringConst.PASSWORD,
            prefixIconColor: DropAppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            obscured: true,
            filled: false,
          ),
          SpaceH16(),
          CustomTextFormField(
            textFormFieldStyle: formTextStyle,
            hintText: DropStringConst.CONFIRM_PASSWORD,
            prefixIconColor: DropAppColors.primaryColor,
            hintTextStyle: hintTextStyle,
            border: Borders.defaultPrimaryUnderlineBorder,
            enabledBorder: Borders.defaultPrimaryUnderlineBorder,
            focusedBorder: Borders.defaultPrimaryUnderlineBorder,
            obscured: true,
            filled: false,
          ),
          Spacer(),
          DropButton(
            onTap: () {
              ExtendedNavigator.root.push(Routes.verificationScreen);
            },
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.SIGN_UP,
            textStyle: theme.textTheme.subtitle1.copyWith(
              color: DropAppColors.white,
            ),
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.SIGN_UP_WITH_GOOGLE,
            color: DropAppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          SpaceH16(),
          CustomButton(
            onPressed: () {},
            height: Sizes.HEIGHT_60,
            borderRadiusGeometry: AppRadius.defaultButtonRadius,
            title: DropStringConst.SIGN_UP_WITH_FACEBOOK,
            color: DropAppColors.white,
            borderSide: Borders.defaultButtonBorder,
            textStyle: theme.textTheme.subtitle1,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
