import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

const double kBorderRadius = Sizes.RADIUS_8;

class PlanTripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = assignWidth(context: context, fraction: 1);
    double height = assignHeight(context: context, fraction: 0.4);
    TextStyle titleStyle = theme.textTheme.subtitle1.copyWith(
      color: RoamAppColors.black50,
    );
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(Sizes.RADIUS_60),
                  ),
                  child: Image.asset(
                    RoamImagePath.HOLIDAY,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Sizes.PADDING_32,
                    horizontal: Sizes.PADDING_24,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: Sizes.WIDTH_50,
                        height: Sizes.HEIGHT_50,
                        child: CustomButton2(
                          onPressed: () {
                            ExtendedNavigator.root.pop();
                          },
                          borderRadius: Sizes.RADIUS_12,
                          icon: Icons.arrow_back_ios,
                          iconColor: RoamAppColors.white,
                          color: RoamAppColors.accentColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SpaceH16(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(RoamStringConst.TRIP_NAME, style: titleStyle),
                  SpaceH16(),
                  CustomTextFormField(
                    textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                      color: RoamAppColors.secondaryColor,
                    ),
                    hintText: RoamStringConst.TRIP_HINT_TEXT,
                    prefixIconColor: RoamAppColors.primaryColor,
                    hintTextStyle: theme.textTheme.bodyText2.copyWith(
                      color: RoamAppColors.grey,
                    ),
                    filled: true,
                    fillColor: RoamAppColors.white,
                    borderStyle: BorderStyle.solid,
                  ),
                  SpaceH16(),
                  Text(RoamStringConst.DATE, style: titleStyle),
                  SpaceH16(),
                  CustomTextFormField(
                    textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                      color: RoamAppColors.secondaryColor,
                    ),
                    hintText: RoamStringConst.DATE_HINT_TEXT,
                    prefixIconColor: RoamAppColors.primaryColor,
                    hintTextStyle: theme.textTheme.bodyText2.copyWith(
                      color: RoamAppColors.grey,
                    ),
                    filled: true,
                    hasSuffixIcon: true,
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: RoamAppColors.accentColor,
                    ),
                    fillColor: RoamAppColors.white,
                    borderStyle: BorderStyle.solid,
                  ),
                  SpaceH30(),
                  Text(RoamStringConst.TRAVEL_WITH, style: titleStyle),
                  SpaceH16(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: assignWidth(context: context, fraction: 0.3),
                        child: CustomButton(
                          onPressed: () {
                            ExtendedNavigator.root
                                .push(Routes.addCollaboratorsScreen);
                          },
                          height: Sizes.HEIGHT_44,
                          title: RoamStringConst.PARTY,
                          textStyle: theme.textTheme.subtitle1.copyWith(
                            color: RoamAppColors.white,
                          ),
                          borderRadius: Sizes.RADIUS_8,
                        ),
                      ),
                      Container(
                        width: assignWidth(context: context, fraction: 0.3),
                        child: CustomButton(
                          onPressed: () {},
                          height: Sizes.HEIGHT_44,
                          title: RoamStringConst.SOLO,
                          color: RoamAppColors.white,
                          borderSide: BorderSide(color: RoamAppColors.grey),
                          textStyle: theme.textTheme.subtitle1.copyWith(
                            color: RoamAppColors.grey,
                          ),
                          borderRadius: Sizes.RADIUS_8,
                        ),
                      ),
                    ],
                  ),
                  SpaceH24(),
                  CustomButton(
                    onPressed: () {},
                    title: RoamStringConst.START_MY_TRIP,
                    textStyle: theme.textTheme.subtitle1.copyWith(
                      color: RoamAppColors.white,
                    ),
                    borderRadius: Sizes.RADIUS_8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
