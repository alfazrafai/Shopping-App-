import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/product.cart/product_vertical_card.dart';
import 'package:shopping_app/features/shop/screens/home/widget/custom_home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../../common/layout/grid_layout.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_caterory_image_text.dart';
import '../../../../common/widgets/texts/product_title_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeaderContainer(
              child: Column(
                children: [
                  CHomeAppBar(),
                  SizedBox(height: CSizes.sm),
                  CSearchContainer(
                    text: 'Search for products',
                    icon: Iconsax.search_normal,
                    showBackground: true,
                    showBorder: true,
                  ),
                  SizedBox(height: CSizes.lg),

                  VerticalCategoryImages(
                    categoryImages: "assets/images/onboarding1.gif",
                    categoryName: "Category Name",
                    onCategoryTap: () {},
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CSizes.defaultSpacing,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PromoSlider(),
                  SizedBox(height: CSizes.lg),
                  CSectionHeading(
                    sectionTitle: 'Popular Products',
                    showActionButton: false,
                  ),

                  CGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) => CProductVerticalCard(),
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
