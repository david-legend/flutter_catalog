import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_painters.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

class RegisterScreen7 extends StatefulWidget {

  @override
  _RegisterScreen7State createState() => _RegisterScreen7State();
}

class _RegisterScreen7State extends State<RegisterScreen7> {


  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.whiteShade2,
      body: DefaultTabController(
        length: 2,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Stack(
            children: <Widget>[
              drawCircles(),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: (heightOfScreen * 0.05) + (widthOfScreen * 0.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: widthOfScreen * 0.1,
                      right: widthOfScreen * 0.3,
                    ),
                    child: TabBar(
                      labelStyle: theme.textTheme.subtitle1
                          .copyWith(color: AppColors.violet),
                      indicatorColor: AppColors.violet,
                      labelColor: AppColors.violet,
                      unselectedLabelColor: AppColors.violetShade1,
                      tabs: [
                        Tab(text: StringConst.LOG_IN_2),
                        Tab(text: StringConst.REGISTER),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (heightOfScreen * 0.05),
                  ),
                  Container(
                    height: 400,
                    child: _buildTabView(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawCircles() {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.2, heightOfScreen * 0.05),
            radius: widthOfScreen * 0.25,
            color: AppColors.violet,
            hasShadow: true,
            shadowColor: AppColors.violetShade1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.75, heightOfScreen * 0.05),
            radius: widthOfScreen * 0.5,
            color: AppColors.violet,
            hasShadow: true,
            shadowColor: AppColors.violetShade1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.1, heightOfScreen * 0.95),
            radius: widthOfScreen * 0.175,
            color: AppColors.violet,
            hasShadow: true,
            shadowColor: AppColors.violetShade1,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.35, heightOfScreen * 0.85),
            radius: widthOfScreen * 0.1,
            color: AppColors.violet,
            hasShadow: true,
            shadowColor: AppColors.violetShade1,
          ),
        ),
      ],
    );
  }

  Widget _buildTabView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: TabBarView(
            children: [
              _buildLoginForm(),
              _buildRegisterForm(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLoginForm() {
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            ),
            padding:
                EdgeInsets.only(left: Sizes.PADDING_12, top: Sizes.PADDING_12),
            child: CustomTextFormField(
              textInputType: TextInputType.text,
              textFormFieldMargin: EdgeInsets.only(left: Sizes.MARGIN_26),
              hasTitle: true,
              title: StringConst.USER_NAME,
              titleStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.violet,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
              hasTitleIcon: true,
              titleIcon: Padding(
                padding: const EdgeInsets.only(right: Sizes.PADDING_8),
                child: Icon(
                  FeatherIcons.user,
                  color: AppColors.violetShade1,
                  size: Sizes.ICON_SIZE_16,
                ),
              ),
              enabledBorder: Borders.noBorder,
              focusedBorder: Borders.noBorder,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.violetShade1),
              textStyle: Styles.customTextStyle(color: AppColors.violetShade1),
              hintText: StringConst.USERNAME_HINT_TEXT,
            ),
          ),
          SpaceH12(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            ),
            padding:
                EdgeInsets.only(left: Sizes.PADDING_12, top: Sizes.PADDING_12),
            child: CustomTextFormField(
              textInputType: TextInputType.text,
              textFormFieldMargin: EdgeInsets.only(left: Sizes.MARGIN_26),
              hasTitle: true,
              title: StringConst.PASSWORD,
              titleStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.violet,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
              hasTitleIcon: true,
              titleIcon: Padding(
                padding: const EdgeInsets.only(right: Sizes.PADDING_8),
                child: Icon(
                  FeatherIcons.lock,
                  color: AppColors.violetShade1,
                  size: Sizes.ICON_SIZE_16,
                ),
              ),
              enabledBorder: Borders.noBorder,
              focusedBorder: Borders.noBorder,
              obscured: true,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.violetShade1),
              textStyle: Styles.customTextStyle(color: AppColors.violetShade1),
              hintText: StringConst.PASSWORD_HINT_TEXT,
            ),
          ),
          SpaceH12(),
          Container(
            width: widthOfScreen * 0.6,
            child: CustomButton(
              title: StringConst.LOG_IN_2,
              color: AppColors.violet,
              textStyle: theme.textTheme.button.copyWith(
                color: AppColors.white,
                fontSize: Sizes.TEXT_SIZE_16,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRegisterForm() {
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            ),
            padding:
                EdgeInsets.only(left: Sizes.PADDING_12, top: Sizes.PADDING_12),
            child: CustomTextFormField(
              textInputType: TextInputType.text,
              textFormFieldMargin: EdgeInsets.only(left: Sizes.MARGIN_26),
              hasTitle: true,
              title: StringConst.USER_NAME,
              titleStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.violet,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
              hasTitleIcon: true,
              titleIcon: Padding(
                padding: const EdgeInsets.only(right: Sizes.PADDING_8),
                child: Icon(
                  FeatherIcons.user,
                  color: AppColors.violetShade1,
                  size: Sizes.ICON_SIZE_16,
                ),
              ),
              enabledBorder: Borders.noBorder,
              focusedBorder: Borders.noBorder,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.violetShade1),
              textStyle: Styles.customTextStyle(color: AppColors.violetShade1),
              hintText: StringConst.USERNAME_HINT_TEXT,
            ),
          ),
          SpaceH12(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            ),
            padding:
                EdgeInsets.only(left: Sizes.PADDING_12, top: Sizes.PADDING_12),
            child: CustomTextFormField(
              textInputType: TextInputType.text,
              textFormFieldMargin: EdgeInsets.only(left: Sizes.MARGIN_26),
              hasTitle: true,
              title: StringConst.PASSWORD,
              titleStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.violet,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
              hasTitleIcon: true,
              titleIcon: Padding(
                padding: const EdgeInsets.only(right: Sizes.PADDING_8),
                child: Icon(
                  FeatherIcons.lock,
                  color: AppColors.violetShade1,
                  size: Sizes.ICON_SIZE_16,
                ),
              ),
              enabledBorder: Borders.noBorder,
              focusedBorder: Borders.noBorder,
              obscured: true,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.violetShade1),
              textStyle: Styles.customTextStyle(color: AppColors.violetShade1),
              hintText: StringConst.PASSWORD_HINT_TEXT,
            ),
          ),
          SpaceH12(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.RADIUS_8),
            ),
            padding:
                EdgeInsets.only(left: Sizes.PADDING_12, top: Sizes.PADDING_12),
            child: CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              textFormFieldMargin: EdgeInsets.only(left: Sizes.MARGIN_26),
              hasTitle: true,
              title: StringConst.EMAIL_2,
              titleStyle: theme.textTheme.subtitle1.copyWith(
                color: AppColors.violet,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
              hasTitleIcon: true,
              titleIcon: Padding(
                padding: const EdgeInsets.only(right: Sizes.PADDING_8),
                child: Icon(
                  FeatherIcons.mail,
                  color: AppColors.violetShade1,
                  size: Sizes.ICON_SIZE_16,
                ),
              ),
              enabledBorder: Borders.noBorder,
              focusedBorder: Borders.noBorder,
              hintTextStyle:
                  Styles.customTextStyle(color: AppColors.violetShade1),
              textStyle: Styles.customTextStyle(color: AppColors.violetShade1),
              hintText: StringConst.EMAIL_HINT_TEXT,
            ),
          ),
          SpaceH12(),
          Container(
            width: widthOfScreen * 0.6,
            child: CustomButton(
              title: StringConst.REGISTER,
              color: AppColors.violet,
              textStyle: theme.textTheme.button.copyWith(
                color: AppColors.white,
                fontSize: Sizes.TEXT_SIZE_16,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
