import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/custom_divider.dart';
import 'package:fluttercatalog/widgets/custom_shape_clippers.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final heightOfAppBar = 56.0;

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;

    return Scaffold(
      appBar: AppBar(
        elevation: Sizes.ELEVATION_0,
        backgroundColor: AppColors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper2(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: AppColors.greyShade2),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper1(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: AppColors.pink),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_36),
              child: ListView(
                children: <Widget>[
                  //10% of the height of screen
                  SizedBox(height: heightOfScreen * 0.075),
                  _buildIntroText(context),
                  SpaceH8(),
                  _buildForm(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroText(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;

    return ListBody(
      children: <Widget>[
        Text(
          StringConst.WELCOME,
          style: textTheme.headline.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        SpaceH4(),
        Text(
          StringConst.BACK,
          style: textTheme.headline.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        SpaceH4(),
        Text(
          StringConst.SIGN_IN_MSG,
          style: textTheme.subtitle.copyWith(
            color: AppColors.white,
            fontSize: Sizes.TEXT_SIZE_16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: heightOfScreen * 0.075),
        Text(
          StringConst.SIGN_IN,
          style: textTheme.headline5.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }

  Widget _buildForm(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var iconTheme = Theme.of(context).iconTheme;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.emailAddress,
          hintText: StringConst.EMAIL_ADDRESS,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          prefixIcon: Icon(
            FeatherIcons.mail,
            color: iconTheme.color,
            size: Sizes.ICON_SIZE_20,
          ),
        ),
        SpaceH20(),
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.text,
          hintTextStyle: Styles.customTextStyle(color: AppColors.white),
          textStyle: Styles.customTextStyle(color: AppColors.white),
          hintText: StringConst.PASSWORD,
          obscured: true,
          prefixIcon: Icon(
            FeatherIcons.key,
            color: iconTheme.color,
            size: Sizes.ICON_SIZE_20,
          ),
        ),
        SpaceH24(),
        CustomButton(
          title: StringConst.SIGN_ME_IN,
          textStyle: textTheme.button.copyWith(
            color: AppColors.white,
          ),
          onPressed: () {},
        ),
        SpaceH20(),
        InkWell(
          onTap: () => ExtendedNavigator.ofRouter<Router>()
              .pushNamed(Routes.signUpScreen1),
          child: Text(
            StringConst.DONT_HAVE_AN_ACCOUNT,
            textAlign: TextAlign.center,
            style: textTheme.subtitle.copyWith(
              fontSize: Sizes.TEXT_SIZE_14,
              color: AppColors.blackShade6,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SpaceH16(),
        Text(
          StringConst.NEED_HELP,
          textAlign: TextAlign.center,
          style: textTheme.subtitle.copyWith(
            fontSize: Sizes.TEXT_SIZE_14,
            color: AppColors.blackShade6,
            fontWeight: FontWeight.w600,
          ),
        ),
        SpaceH2(),
        CustomDivider(
          color: AppColors.blackShade6,
        )
      ],
    );
  }
}
