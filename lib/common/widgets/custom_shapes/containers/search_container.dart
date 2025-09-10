import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helper/CHelperClass.dart';

class CSearchContainer extends StatelessWidget {
  const CSearchContainer({
    super.key,
    required this.text,
    this.icon,
    required this.showBackground,
    required this.showBorder,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDark(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CSizes.defaultSpacing),
      child: Container(
        height: 40,
        width: CHelperFunctions.screenWith(context),
        decoration: BoxDecoration(
          color: showBackground ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(CSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: CColors.white) : null,
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
    );
  }
}
