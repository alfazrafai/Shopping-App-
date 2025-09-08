import 'package:flutter/material.dart';

import '../../../../utils/constant/colors.dart';

class CCircularContainer extends StatelessWidget {
  const CCircularContainer({
    super.key,
    this.width = 300,
    this.height = 300,
    this.radius = 300,
    this.padding = 0,
    this.color = CColors.white,
    this.child,
  });

  final double? width;
  final double? height;
  final double radius;
  final double? padding;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        color: CColors.white.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
