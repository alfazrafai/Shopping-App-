import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';

class CCircularContainer extends StatelessWidget {
  const CCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 300,
    this.padding = 0,
    this.color = CColors.white,
    this.child,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double? padding;
  final EdgeInsets? margin;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        color: color,
      ),
      child: child,
    );
  }
}
