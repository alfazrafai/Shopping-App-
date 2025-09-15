import 'package:flutter/material.dart';

import '../../../utils/enums/enum_text_sizes.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    required this.maxLine,
    this.color,
    this.textAlign,
    required this.brandTextSize,
  });

  final String title;
  final int maxLine;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLine,

      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextSize == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
