import 'package:flutter/material.dart';
import 'package:shopping_app/common/layout/grid_layout.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopping_app/common/widgets/product.cart/cart_menu_icon.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/enums/enum_text_sizes.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../../../common/widgets/brands/custom_brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CCartCounterIcon(onPressed: () {}, iconColor: Colors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: CHelperFunctions.isDark(context)
                    ? CColors.black
                    : CColors.white,
                expandedHeight: 400,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(CSizes.defaultSpacing),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      CSearchContainer(
                        text: 'Search',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),

                      SizedBox(height: CSizes.sm),

                      CSectionHeading(sectionTitle: 'Featured Brands'),

                      SizedBox(height: CSizes.sm),
                      CGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return CCustomBrandCard();
                        },
                      ),
                    ],
                  ),
                ),

                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: TabBar(
                    indicatorColor: CColors.primary,
                    isScrollable: true,
                    unselectedLabelColor: CColors.darkGrey,
                    labelColor: CHelperFunctions.isDark(context)
                        ? CColors.white
                        : CColors.black,
                    padding: EdgeInsets.zero,
                    tabAlignment: TabAlignment.start,
                    tabs: [
                      Tab(child: Text("Sports")),
                      Tab(child: Text("Furniture")),
                      Tab(child: Text("Clothes")),
                      Tab(child: Text("Toys")),
                      Tab(child: Text("Shoes")),
                      Tab(child: Text("Electronics")),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
