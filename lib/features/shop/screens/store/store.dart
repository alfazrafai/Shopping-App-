import 'package:flutter/material.dart';
import 'package:shopping_app/common/layout/grid_layout.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopping_app/common/widgets/product.cart/cart_menu_icon.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/enums/enum_text_sizes.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../../../common/widgets/images/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [CCartCounterIcon(onPressed: () {}, iconColor: Colors.black)],
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
                        return GestureDetector(
                          onTap: () {},
                          child: CCircularContainer(
                            padding: EdgeInsets.all(CSizes.sm),

                            child: Row(
                              children: [
                                Flexible(
                                  child: CCircularImage(
                                    image:
                                        'assets/images/banners/discount.jpeg',
                                    isNetworkImage: false,
                                  ),
                                ),

                                SizedBox(width: CSizes.sm),

                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CBrandTitleTextWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        "200 product vdfhdgxcvsdgbv",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
