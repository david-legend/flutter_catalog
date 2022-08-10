import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/saved_paces_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/search_input.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';


const double kSidePadding = Sizes.PADDING_24;

class SavedPlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
          child: CustomAppBar(),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kSidePadding,
            vertical: Sizes.PADDING_8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                RoamStringConst.SAVED_PLACES,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: Sizes.TEXT_SIZE_28,
                ),
              ),
              SpaceH16(),
              SearchInput(),
              SpaceH20(),
              TabBar(
                labelColor: AppColors.primaryColor,
                labelStyle: theme.textTheme.titleLarge?.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: Sizes.TEXT_SIZE_14,
                ),
                labelPadding: EdgeInsets.zero,
                unselectedLabelColor: AppColors.grey50,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: RoamStringConst.ATTRACTIONS,
                  ),
                  Tab(
                    text: RoamStringConst.HOTELS,
                  ),
                  Tab(
                    text: RoamStringConst.RECOMMENDED,
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildSavedPlacesCards(),
                    _buildSavedPlacesCards(),
                    _buildSavedPlacesCards(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSavedPlacesCards() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: RoamData.savedPlacesItems.length,
      padding: EdgeInsets.only(top: Sizes.PADDING_16),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return SavedPlacesCard(
          imagePath: RoamData.savedPlacesItems[index].imagePath,
          title: RoamData.savedPlacesItems[index].title,
          subtitle: RoamData.savedPlacesItems[index].subtitle,
          images: RoamData.profileStackedImage,
          likes: RoamData.savedPlacesItems[index].likes,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SpaceH16();
      },
    );
  }
}
