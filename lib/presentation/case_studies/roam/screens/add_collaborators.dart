import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/collaborator_list_tile.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

class AddCollaboratorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.PADDING_32,
            horizontal: Sizes.PADDING_24,
          ),
          children: [
            Row(
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
            SpaceH16(),
            Center(
              child: Text(
                RoamStringConst.ADD_COLLABORATORS,
                style: theme.textTheme.headline6.copyWith(
                  color: RoamAppColors.black50,
                ),
              ),
            ),
            SpaceH16(),
            CustomTextFormField(
              textFormFieldStyle: theme.textTheme.subtitle1.copyWith(
                color: RoamAppColors.secondaryColor,
              ),
              hintText: RoamStringConst.SEARCH_HINT_TEXT_2,
              prefixIconColor: RoamAppColors.primaryColor,
              hintTextStyle: theme.textTheme.bodyText2.copyWith(
                color: RoamAppColors.grey,
              ),
              filled: true,
              fillColor: RoamAppColors.white,
              hasSuffixIcon: true,
              suffixIcon: Icon(
                FeatherIcons.search,
                color: RoamAppColors.accentColor,
              ),
              borderStyle: BorderStyle.solid,
            ),
            SpaceH16(),
            ..._buildCollaborators(RoamData.collaboratorItems),
            SpaceH20(),
            CustomButton(
              onPressed: () {
                ExtendedNavigator.root.pop();
              },
              title: RoamStringConst.FINISH,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: RoamAppColors.white,
              ),
              borderRadius: Sizes.RADIUS_8,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCollaborators(List<CollaboratorItem> collaborators) {
    List<Widget> items = [];

    for (int index = 0; index < collaborators.length; index++) {
      items.add(
        CollaboratorListTile(
          title: collaborators[index].title,
          imagePath: collaborators[index].imagePath,
        ),
      );
    }
    return items;
  }
}
