import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/styles/CShadowStyle.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopping_app/common/widgets/images/custom_image.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../../utils/constant/colors.dart';
import '../icons/custom_circular_icon.dart';
import '../texts/product_title_text.dart';

class CProductVerticalCard extends StatelessWidget {
  const CProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDark(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,

        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [CShadow.verticalProductShadow],
          borderRadius: BorderRadius.circular(1),
          color: dark ? CColors.darkGrey : CColors.white,
        ),
        child: Column(
          children: [
            CCircularContainer(
              height: 180,
              padding: EdgeInsets.all(1),
              color: dark ? CColors.darkGrey : CColors.lightGrey,
              child: Stack(
                children: [
                  CRoundedImage(
                    imageURL: "assets/images/userprofile.gif",
                    applyImageRadius: true,
                  ),

                  Positioned(
                    top: 12,
                    left: 5,
                    child: CCircularContainer(
                      radius: CSizes.sm,
                      color: CColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: CSizes.sm,
                        vertical: CSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: CColors.black),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 5,
                    right: 5,
                    child: CCircularIcon(
                      icon: Iconsax.heart5,
                      color: CColors.vibrantRed,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(CSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CProductTitleText(title: 'Product name', isSmallText: true),
                  SizedBox(height: CSizes.sm),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(width: CSizes.xs),
                      Icon(
                        Iconsax.verify5,
                        color: CColors.primary,
                        size: CSizes.iconXs,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$20",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: dark ? CColors.white : CColors.darkGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: SizedBox(
                          width: CSizes.iconLg * 1.2,
                          height: CSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: dark ? CColors.black : CColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
