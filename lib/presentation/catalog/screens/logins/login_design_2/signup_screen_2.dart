import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_divider.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class SignUpScreen2 extends StatefulWidget {


  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: heightOfScreen * 0.15),
                Expanded(
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        Text(
                          StringConst.REGISTER,
                          textAlign: TextAlign.center,
                          style: textTheme.headlineMedium,
                        ),
                        SpaceH20(),
                        _buildForm()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => AutoRouter.of(context).push(LoginScreen2Route()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        StringConst.ALREADY_REGISTERED,
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.blackShade9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SpaceW8(),
                      Text(
                        StringConst.LOG_IN,
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceH20(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    OutlineInputBorder inputBorder = Borders.customOutlineInputBorder(
      borderRadius: Sizes.RADIUS_30,
      color: AppColors.grey,
    );
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomTextFormField(
              width: (widthOfScreen / 2) - Sizes.MARGIN_24,
              textInputType: TextInputType.text,
              labelText: StringConst.FIRST_NAME,
              border: inputBorder,
              enabledBorder: inputBorder,
              focusedBorder: inputBorder,
              labelStyle: Styles.customTextStyle2(),
              hintTextStyle: Styles.customTextStyle2(),
              textStyle: Styles.customTextStyle2(),
            ),
            SpaceW16(),
            CustomTextFormField(
              width: (widthOfScreen / 2) - Sizes.MARGIN_24,
              textInputType: TextInputType.text,
              labelText: StringConst.LAST_NAME,
              border: inputBorder,
              enabledBorder: inputBorder,
              focusedBorder: inputBorder,
              labelStyle: Styles.customTextStyle2(),
              hintTextStyle: Styles.customTextStyle2(),
              textStyle: Styles.customTextStyle2(),
            ),
          ],
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.EMAIL_ADDRESS,
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          labelStyle: Styles.customTextStyle2(),
          hintTextStyle: Styles.customTextStyle2(),
          textStyle: Styles.customTextStyle2(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.PASSWORD,
          obscured: true,
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          labelStyle: Styles.customTextStyle2(),
          hintTextStyle: Styles.customTextStyle2(),
          textStyle: Styles.customTextStyle2(),
        ),
        SpaceH20(),
        CustomButton(
          title: StringConst.REGISTER,
          textStyle: textTheme.titleMedium?.copyWith(color: AppColors.white),
          color: AppColors.pinkShade2,
          onPressed: () {},
        ),
        SpaceH16(),
        _buildSeparator(),
        SpaceH16(),
        CustomButton(
          title: StringConst.REGISTER_WITH_GOOGLE,
          textStyle: textTheme.titleMedium,
          color: AppColors.white,
          onPressed: () {},
          icon: Image.asset(
            ImagePath.GOOGLE_LOGO,
            height: Sizes.HEIGHT_25,
            width: Sizes.WIDTH_25,
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CustomDivider(color: AppColors.black),
          ),
          SpaceW8(),
          Text(StringConst.OR, style: textTheme.titleMedium),
          SpaceW8(),
          Expanded(child: CustomDivider(color: AppColors.black)),
        ],
      ),
    );
  }
}
