import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/rounded_container.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

const double kPadding = Sizes.PADDING_24;
const double kSpacing = Sizes.SIZE_8;

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.only(left: Sizes.PADDING_24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(DropStringConst.PROFILE, style: theme.textTheme.headlineLarge),
            SpaceH16(),
            Text(DropStringConst.USERNAME_2, style: theme.textTheme.headlineMedium),
            SpaceH4(),
            Text(
              DropStringConst.USERNAME_EMAIL,
              style: theme.textTheme.titleLarge?.copyWith(
                color: DropAppColors.secondaryColor2,
              ),
            ),
            SpaceH4(),
            Text(
              DropStringConst.USER_LOCATION,
              style: theme.textTheme.titleLarge?.copyWith(
                color: DropAppColors.secondaryColor2,
              ),
            ),
            SpaceH16(),
            ..._buildListTile(context: context, data: DropData.userData),
            Spacer(),
            Text(DropStringConst.CONTACT_US, style: theme.textTheme.headlineMedium),
            SpaceH16(),
            Wrap(
              spacing: 8,
              children: _buildSocialIcons(
                context: context,
                socialItems: DropData.socialItems,
              ),
            ),
            Spacer(flex: 2),
            CustomButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: DropStringConst.EXIT,
              color: DropAppColors.primaryColor,
              textStyle: theme.textTheme.titleLarge?.copyWith(
                color: DropAppColors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildListTile({
    required BuildContext context,
    required List<String> data,
  }) {
    List<Widget> items = [];
    TextTheme textTheme = Theme.of(context).textTheme;

    for (int index = 0; index < data.length; index++) {
      items.add(
        ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.only(
            left: Sizes.PADDING_0,
            right: Sizes.PADDING_24,
          ),
          title: Text(data[index], style: textTheme.titleLarge),
          trailing: Icon(FeatherIcons.chevronRight),
        ),
      );
    }

    return items;
  }

  List<Widget> _buildSocialIcons({
    required BuildContext context,
    required List<SocialItem> socialItems,
  }) {
    List<Widget> items = [];
    double padding = (kPadding * 2);
    double spacing = kSpacing * 3;
    double subs = padding + spacing;
    for (int index = 0; index < socialItems.length; index++) {
      items.add(
        RoundedContainer(
          iconData: socialItems[index].iconData,
          backgroundColor: socialItems[index].backgroundColor!,
          width: 60,
          height: 60,
        ),
      );
    }
    return items;
  }
}
