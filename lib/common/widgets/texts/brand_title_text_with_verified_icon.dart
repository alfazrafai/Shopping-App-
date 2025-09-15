import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/colors.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/enums/enum_text_sizes.dart';
import 'brand_title_text.dart';

class CBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const CBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.iconColor = CColors.primary,
    this.textAlign = TextAlign.start,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLine: maxLine,
            color: textColor,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        SizedBox(width: CSizes.xs),
        Icon(Iconsax.verify5, color: CColors.primary, size: CSizes.iconXs),
      ],
    );
  }
}
