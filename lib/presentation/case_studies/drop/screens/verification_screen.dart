import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/otp_text_field.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';


class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<TextStyle?> otpTextStyles = [
      createStyle(DropAppColors.accentPurpleColor),
      createStyle(DropAppColors.accentYellowColor),
      createStyle(DropAppColors.accentDarkGreenColor),
      createStyle(DropAppColors.accentOrangeColor),
      createStyle(DropAppColors.accentPinkColor),
      createStyle(DropAppColors.accentPurpleColor),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(
          hasTrailing: false,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: Sizes.PADDING_24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DropStringConst.VERIFICATION_CODE,
              style: theme.textTheme.headlineLarge,
            ),
            SpaceH16(),
            Text(
              DropStringConst.VERIFICATION_TEXT,
              style: theme.textTheme.headlineSmall,
            ),
            Text(DropStringConst.ENTER_CODE, style: theme.textTheme.headlineSmall),
            Spacer(flex: 2),
            OtpTextField(
              numberOfFields: 6,
              borderColor: DropAppColors.accentPurpleColor,
              focusedBorderColor: DropAppColors.accentPurpleColor,
              styles: otpTextStyles,
              showFieldAsBox: false,
              borderWidth: Sizes.WIDTH_8,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  DropStringConst.VERIFICATION_DESCRIPTION,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Center(
              child: Text(
                DropStringConst.NO_CODE,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Spacer(flex: 3),
            CustomButton(
              onPressed: () {
                AutoRouter.of(context).push(InterestScreenRoute());
              },
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: DropStringConst.CONFIRM,
              color: DropAppColors.primaryColor,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: DropAppColors.white,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  TextStyle? createStyle(Color color) {
    ThemeData theme = Theme.of(context);
    return theme.textTheme.displaySmall?.copyWith(color: color);
  }
}