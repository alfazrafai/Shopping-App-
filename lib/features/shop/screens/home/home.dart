import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/features/shop/screens/home/widget/custom_home_appbar.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constant/colors.dart';

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
                  CHomeAppBar(),
                  SizedBox(height: CSizes.sm),
                  CSearchContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
          border: Border.all(color: CColors.white),
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
