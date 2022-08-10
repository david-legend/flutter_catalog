import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/old_trip_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/section_heading.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/trip_card.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(
          hasTrailing: false,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AutoRouter.of(context).push(PlanTripScreenRoute());
        },
        label: Text(
          RoamStringConst.NEW_TRIP,
          style: theme.textTheme.titleLarge?.copyWith(
            color: RoamAppColors.white,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: RoamAppColors.white,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kSidePadding,
          vertical: Sizes.PADDING_8,
        ),
        children: [
          Text(
            RoamStringConst.MY_TRIPS,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: RoamAppColors.primaryColor,
              fontSize: Sizes.TEXT_SIZE_28,
            ),
          ),
          SpaceH16(),
          TripCard(
            title: RoamStringConst.ITALY_ADVENTURE,
            subtitle: RoamStringConst.DURATION,
            content: RoamStringConst.TRIP_SUMMARY,
            footer: RoamStringConst.ITALY,
            imagePath: RoamImagePath.MORE_6,
            images: RoamData.profileStackedImage,
          ),
          SpaceH24(),
          SectionHeading(
            title1: RoamStringConst.OLD_TRIP,
            hasTitle2: false,
          ),
          SpaceH16(),
          ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: RoamData.oldTripItems.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return OldTripCard(
                imagePath: RoamData.oldTripItems[index].imagePath,
                title: RoamData.oldTripItems[index].title,
                subtitle: RoamData.oldTripItems[index].subtitle,
                images: RoamData.profileStackedImage,
                collaborators: RoamData.oldTripItems[index].collaborators,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SpaceH16();
            },
          ),
        ],
      ),
    );
  }
}
