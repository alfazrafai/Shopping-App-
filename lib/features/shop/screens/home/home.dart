import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/utils/constant/colors.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/product.cart/cart_menu_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeaderContainer(
              child: Column(
                children: [
                  CAppBar(
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
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: CColors.white),
                        ),
                      ],
                    ),
                    actions: [
                      CCartCounterIcon(
                        onPressed: () {},
                        iconColor: CColors.white,
                      ),
                    ],
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
