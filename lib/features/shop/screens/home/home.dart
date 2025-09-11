import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/product.cart/product_vertical_card.dart';
import 'package:shopping_app/features/shop/screens/home/widget/custom_home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_caterory_image_text.dart';

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
              padding: const EdgeInsets.all(CSizes.defaultSpacing),
              child: Column(
                children: [
                  PromoSlider(),

                  GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: CSizes.gridViewSpacing,
                      crossAxisSpacing: CSizes.gridViewSpacing,
                      mainAxisExtent: 300,
                    ),
                    itemBuilder: (_, index) => CProductVerticalCard(),
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
