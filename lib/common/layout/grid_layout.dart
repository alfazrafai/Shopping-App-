import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart';
import '../widgets/product.cart/product_vertical_card.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisSpacing = 288,
  });

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: CSizes.gridViewSpacing,
        crossAxisSpacing: CSizes.gridViewSpacing,
        mainAxisExtent: 300,
      ),
      itemBuilder: (_, index) => CProductVerticalCard(),
    );
  }
}
