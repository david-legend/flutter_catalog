import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/category_card.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/product_deal_card.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/section_heading_2.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(
            left: Sizes.PADDING_24,
            top: Sizes.PADDING_32,
            bottom: Sizes.PADDING_24,
          ),
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
              child: DropAppBar(
                onLeadingTap: () {},
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.CATEGORIES,
              title2: DropStringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.categoryItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    title: DropData.categoryItems[index].title,
                    subtitle: DropData.categoryItems[index].subtitle!,
                    subtitleColor: DropData.categoryItems[index].subtitleColor!,
                    imagePath: DropData.categoryItems[index].imagePath,
                    onTap: () {
                      AutoRouter.of(context).push(CategoryItemScreenRoute(category: DropData.categoryItems[index].title));

                    },
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.TOP_DEALS,
              title2: DropStringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.productDealItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: DropData.productDealItems[index].title,
                    subtitle: DropData.productDealItems[index].subtitle,
                    price: DropData.productDealItems[index].price,
                    imagePath: DropData.productDealItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.LATEST,
              title2: DropStringConst.SEE_ALL,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.productLatestItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: DropData.productLatestItems[index].title,
                    subtitle: DropData.productLatestItems[index].subtitle,
                    price: DropData.productLatestItems[index].price,
                    imagePath: DropData.productLatestItems[index].imagePath,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}