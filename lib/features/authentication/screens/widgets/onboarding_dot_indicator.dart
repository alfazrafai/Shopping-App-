import 'package:flutter/material.dart';
import 'package:shopping_app/features/authentication/controllers/onboarding/OnBoardingController.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constant/colors.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnboardingDotIndicator extends StatelessWidget {
  const OnboardingDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = CHelperFunctions.isDark(context);

    return Positioned(
      bottom: CDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: CSizes.defaultSpacing,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? CColors.lightGrey : CColors.darkGrey,
          dotHeight: 6,
        ),
        onDotClicked: controller.dotIndicatorTap,
        controller: controller.pageController,
        count: 3,
      ),
    );
  }
}
