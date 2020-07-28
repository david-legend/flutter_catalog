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

class SignUpScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightOfAppBar = 56.0;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyShade2,
        leading: IconButton(
          onPressed: () => ExtendedNavigator.ofRouter<Router>().pop(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: Sizes.ELEVATION_0,
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
            Container(
              height: heightOfScreen,
              width: widthOfScreen,
              decoration: BoxDecoration(color: AppColors.pink),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomSignUpShapeClipper2(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: AppColors.white),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomSignUpShapeClipper1(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: AppColors.greyShade2),
                ),
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_36),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: heightOfScreen * 0.2),
                        _buildIntroText(context),
                        SpaceH20(),
                        _buildForm(context),
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

  Widget _buildIntroText(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return ListBody(
      children: <Widget>[
        Text(
          StringConst.SIGN_UP,
          style: textTheme.headline.copyWith(
            color: AppColors.blackShade2,
            fontWeight: FontWeight.w900,
          ),
        ),
        SpaceH8(),
        Text(
          StringConst.SIGN_UP_MSG,
          style: textTheme.subtitle.copyWith(
            color: AppColors.pinkShade1,
            fontSize: Sizes.TEXT_SIZE_16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildForm(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.text,
          hintText: StringConst.NAME,
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
          prefixIcon: Icon(
            FeatherIcons.user,
            color: AppColors.blackShade4,
            size: Sizes.ICON_SIZE_20,
          ),
        ),
        SpaceH20(),
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.emailAddress,
          hintText: StringConst.EMAIL_ADDRESS,
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
          prefixIcon: Icon(
            FeatherIcons.mail,
            color: AppColors.blackShade4,
            size: Sizes.ICON_SIZE_20,
          ),
        ),
        SpaceH20(),
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.text,
          hintText: StringConst.PASSWORD,
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
          obscured: true,
          prefixIcon: Icon(
            FeatherIcons.key,
            color: AppColors.blackShade4,
            size: Sizes.ICON_SIZE_20,
          ),
        ),
        SpaceH24(),
        CustomButton(
          title: StringConst.SIGN_ME_UP,
          color: AppColors.blackShade5,
          textStyle: textTheme.button.copyWith(
            color: AppColors.white,
          ),
          onPressed: () {},
        ),
        SpaceH20(),
        InkWell(
          onTap: () => ExtendedNavigator.ofRouter<Router>()
              .pushReplacementNamed(Routes.loginScreen1),
          child: Text(
            StringConst.ALREADY_HAVE_AN_ACCOUNT,
            style: textTheme.subtitle.copyWith(
              fontSize: Sizes.TEXT_SIZE_14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SpaceH16(),
        Text(
          StringConst.NEED_HELP,
          style: textTheme.subtitle.copyWith(
            fontSize: Sizes.TEXT_SIZE_14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SpaceH2(),
        CustomDivider(),
      ],
    );
  }
}
//transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
