import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(flex: 1),
              Icon(
                Icons.all_inclusive,
                size: 200,
                color: AppColors.blue,
              ),
              Spacer(flex: 1),
              Text(
                StringConst.SIGN_UP_2,
                style: theme.textTheme.headline5.copyWith(
                  color: AppColors.black,
                  fontSize: Sizes.TEXT_SIZE_40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SpaceH8(),
              Text(
                StringConst.EASY_SIGN_UP,
                style: theme.textTheme.subtitle2.copyWith(
                    color: AppColors.greyShade8, fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 1),
              Container(
                decoration: Decorations.customBoxDecoration(blurRadius: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomButton(
                  title: StringConst.CONTINUE_WITH_FACEBOOK,
                  elevation: Sizes.ELEVATION_12,
                  hasIcon: true,
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: AppColors.white,
                  ),
                  color: AppColors.blue,
                  textStyle: theme.textTheme.button.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.TEXT_SIZE_14),
                  onPressed: () {},
                ),
              ),
              SpaceH24(),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: CustomButton(
                  title: StringConst.USE_EMAIL,
                  elevation: Sizes.ELEVATION_2,
                  color: AppColors.white,
                  borderSide: Borders.customBorder(width: 1.5),
                  textStyle: theme.textTheme.button.copyWith(
                      color: AppColors.blackShade10,
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.TEXT_SIZE_14),
                  onPressed: () =>
                      ExtendedNavigator.root.push(Routes.signUpScreen4),
                ),
              ),
              Spacer(flex: 1),
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
              Spacer(flex: 1),
              InkWell(
                onTap: () => ExtendedNavigator.root.push(Routes.loginScreen4),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: StringConst.ALREADY_HAVE_AN_ACCOUNT,
                          style: theme.textTheme.subtitle1.copyWith(
                            color: AppColors.greyShade8,
                            fontSize: Sizes.TEXT_SIZE_14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: StringConst.LOG_IN_2,
                            style: theme.textTheme.subtitle1.copyWith(
                              color: AppColors.purple,
                              fontSize: Sizes.TEXT_SIZE_14,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
