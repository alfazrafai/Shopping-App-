import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/enums/enum_text_sizes.dart';
import '../custom_shapes/containers/circular_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class CCustomBrandCard extends StatelessWidget {
  const CCustomBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CCircularContainer(
        padding: EdgeInsets.all(CSizes.sm),

        child: Row(
          children: [
            Flexible(
              child: CCircularImage(
                image: 'assets/images/banners/discount.jpeg',
                isNetworkImage: false,
              ),
            ),

            SizedBox(width: CSizes.sm),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
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
  }
}
