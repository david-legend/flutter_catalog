import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/custom_shape_clippers.dart';
import 'package:fluttercatalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class LoginScreen3 extends StatefulWidget {
  LoginScreen3();

  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {
  GlobalKey key = GlobalKey();
  double buttonOffset = 40.0;
  double textOffset = 60.0;

  void getSizeOfCard() {
    final keyContext = key.currentContext;
    if (keyContext != null) {
      final box = keyContext.findRenderObject() as RenderBox;
      setState(() {
        buttonOffset = (box.size.height / 2) - 30;
        textOffset = box.size.height;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
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
                clipper: CustomLoginShapeClipper4(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: AppColors.orangeShade2),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper5(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                    gradient: Gradients.curvesGradient1,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper6(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                    color: AppColors.lighterBlue,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper3(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                    gradient: Gradients.curvesGradient2,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.all(Sizes.MARGIN_0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Container(
                            height: heightOfScreen * 0.25,
                          ),
                          Text(
                            StringConst.LOG_IN_2,
                            textAlign: TextAlign.center,
                            style: textTheme.headline.copyWith(
                              color: AppColors.lightBlueShade5,
                            ),
                          ),
                          SizedBox(height: heightOfScreen * 0.05),
                          _buildForm(context: context),
                          SpaceH16(),
                          Container(
                            margin:
                                EdgeInsets.only(left: (widthOfScreen * 0.75)),
                            child: Text(
                              "Forgot ?",
                              style: textTheme.body1.copyWith(
                                fontSize: Sizes.TEXT_SIZE_16,
                                color: AppColors.lightBlueShade1,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SpaceH16(),
                          Container(
                            height: 60,
                            width: 120,
                            margin:
                                EdgeInsets.only(right: (widthOfScreen - 120)),
                            child: RaisedButton(
                              onPressed: () =>
                                  ExtendedNavigator.ofRouter<Router>()
                                      .pushNamed(
                                Routes.signUpScreen3,
                              ),
                              color: AppColors.white,
                              elevation: Sizes.ELEVATION_6,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Sizes.RADIUS_30),
                                  bottomRight: Radius.circular(Sizes.RADIUS_30),
                                ),
                              ),
                              child: Text(
                                StringConst.REGISTER,
                                style: textTheme.button.copyWith(
                                  color: AppColors.orangeShade1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm({@required BuildContext context}) {
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Container(
      width: widthOfScreen,
      key: key,
      child: Stack(
        children: <Widget>[
          Container(
            width: widthOfScreen * 0.85,
            child: Card(
              elevation: Sizes.ELEVATION_4,
              margin: const EdgeInsets.only(
                left: Sizes.MARGIN_0,
                top: Sizes.MARGIN_8,
                bottom: Sizes.MARGIN_8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: Sizes.MARGIN_16),
                child: Column(
                  children: <Widget>[
                    CustomTextFormField(
                      hasPrefixIcon: true,
                      prefixIcon: Icon(
                        FeatherIcons.user,
                        color: AppColors.lightBlueShade1,
                        size: Sizes.ICON_SIZE_20,
                      ),
                      hintText: StringConst.USER_NAME,
                      hintTextStyle: Styles.customTextStyle(
                        color: AppColors.lightBlueShade2,
                      ),
                      textStyle: Styles.customTextStyle(
                        color: AppColors.lightBlueShade5,
                      ),
                      contentPadding: EdgeInsets.only(top: Sizes.PADDING_16),
                      enabledBorder: Borders.noBorder,
                      border: Borders.noBorder,
                      focusedBorder: Borders.noBorder,
                    ),
                    Divider(
                      color: AppColors.grey,
                      height: Sizes.HEIGHT_20,
                    ),
                    CustomTextFormField(
                      hasPrefixIcon: true,
                      prefixIcon: Icon(
                        FeatherIcons.lock,
                        color: AppColors.lightBlueShade1,
                        size: Sizes.ICON_SIZE_20,
                      ),
                      hintText: "********",
                      hintTextStyle: Styles.customTextStyle(
                        color: AppColors.lightBlueShade2,
                      ),
                      textStyle: Styles.customTextStyle(
                        color: AppColors.lightBlueShade5,
                      ),
                      obscured: true,
                      contentPadding: EdgeInsets.only(top: Sizes.PADDING_16),
                      enabledBorder: Borders.noBorder,
                      border: Borders.noBorder,
                      focusedBorder: Borders.noBorder,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: widthOfScreen * 0.75,
            top: buttonOffset,
            child: Container(
              height: Sizes.HEIGHT_60,
              width: Sizes.WIDTH_60,
              child: RaisedButton(
                padding: const EdgeInsets.all(Sizes.PADDING_0),
                elevation: Sizes.ELEVATION_8,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                ),
                child: Ink(
                  height: Sizes.HEIGHT_60,
                  width: Sizes.WIDTH_60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.RADIUS_30),
                    gradient: Gradients.buttonGradient,
                  ),
                  child: Icon(
                    FeatherIcons.arrowRight,
                    size: Sizes.ICON_SIZE_30,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: widthOfScreen * 0.75,
            top: textOffset + 16,
            child: Container(
              child: Text("Forgot"),
            ),
          ),
        ],
      ),
    );
  }
}
