import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../utils/helper/CHelperClass.dart';

class CCircularImage extends StatelessWidget {
  const CCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    required this.isNetworkImage,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = CSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDark(context);

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: isDark ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
