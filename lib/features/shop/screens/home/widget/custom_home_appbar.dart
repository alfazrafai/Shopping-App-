import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product.cart/cart_menu_icon.dart';
import '../../../../../utils/constant/colors.dart';

class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good day for shopping",
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: CColors.white),
          ),
          Text(
            "User Alfaz",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: CColors.white),
          ),
        ],
      ),
      actions: [CCartCounterIcon(onPressed: () {}, iconColor: CColors.white)],
    );
  }
}
