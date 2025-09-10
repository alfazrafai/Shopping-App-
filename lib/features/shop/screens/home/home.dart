import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopping_app/features/shop/screens/home/widget/custom_home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_caterory_image_text.dart';
import '../../../../common/widgets/images/custom_image.dart';
import '../../../../utils/constant/colors.dart';

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
              child: PromoSlider(),
            ),
          ],
        ),
      ),
    );
  }
}
