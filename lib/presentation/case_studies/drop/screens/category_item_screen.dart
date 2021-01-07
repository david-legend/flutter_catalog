import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/product_card.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/section_heading_2.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class CategoryItemScreen extends StatelessWidget {
  final String category;

  CategoryItemScreen(this.category);

  @override
  Widget build(BuildContext context) {
    List<ProductItem> products = DropData.productCategories[category];
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
              title1: category,
              title2: DropStringConst.SEE_ALL,
            ),
            SpaceH8(),
            ListView.separated(
              itemCount: products.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) {
                return SpaceH8();
              },
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  title: products[index].title,
                  price: products[index].price,
                  imagePath: products[index].imagePath,
                  onTap: () {
                    ExtendedNavigator.root.push(
                      Routes.productScreen,
                      arguments: ProductScreenArguments(
                        product: products[index],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
