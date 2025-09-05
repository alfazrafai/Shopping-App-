import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../controllers/onboarding/OnBoardingController.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDark(context);

    return Positioned(
      bottom: CDeviceUtility.getBottomNavigationBarHeight(),
      right: CSizes.defaultSpacing,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? CColors.accent : CColors.black,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
