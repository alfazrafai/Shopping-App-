import 'package:flutter/material.dart';
import 'package:shopping_app/features/authentication/controllers/onboarding/OnBoardingController.dart';
import 'package:shopping_app/features/authentication/screens/OnboardingScreen.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CDeviceUtility.getAppBarHeigh(),
      right: CSizes.defaultSpacing,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: Text("Skip"),
      ),
    );
  }
}
