import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/custom_image.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
            items: [
              CRoundedImage(imageURL: 'assets/images/banners/discount.jpeg'),
              CRoundedImage(imageURL: 'assets/images/banners/discount.jpeg'),
              CRoundedImage(imageURL: 'assets/images/banners/discount.jpeg'),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: false,
              // Disable infinite looping
              initialPage: 0,
              // Start at the first slide
              autoPlay: false,
              // Disable auto-play for clarity
              scrollDirection: Axis.horizontal,
              // Explicitly set scroll direction
              onPageChanged: (index, _) {
                controller.updatePageIndicator(index);
              },
            ),
          ),
        ),
        SizedBox(height: CSizes.sm),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  CCircularContainer(
                    width: 30,
                    height: 5,
                    radius: 3,
                    margin: EdgeInsets.only(right: 10),
                    color: controller.carousalCurrentIndex.value == i
                        ? CColors.primary
                        : CColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
