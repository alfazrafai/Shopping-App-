import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helper/CHelperClass.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    required this.showBackground,
    required this.showBorder,
    this.padding = const EdgeInsets.symmetric(
      horizontal: CSizes.defaultSpacing,
    ),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDark(context);

    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: padding,
        child: Container(
          height: 50,
          width: CHelperFunctions.screenWith(context),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                      ? CColors.darkGrey
                      : Colors.transparent
                : Colors.transparent,
            borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: CColors.darkGrey) : null,
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(icon, color: CColors.black),
              SizedBox(width: CSizes.sm),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
