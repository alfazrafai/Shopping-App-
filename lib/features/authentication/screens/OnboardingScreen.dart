import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/features/authentication/screens/widgets/onboarding_dot_indicator.dart';
import 'package:shopping_app/features/authentication/screens/widgets/onboarding_next.dart';
import 'package:shopping_app/features/authentication/screens/widgets/onboarding_page.dart'
    show OnBoardingPage;
import 'package:shopping_app/features/authentication/screens/widgets/onboarding_skip.dart';

import '../controllers/onboarding/OnBoardingController.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: "assets/images/userprofile.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
              OnBoardingPage(
                image: "assets/images/onboarding1.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
              OnBoardingPage(
                image: "assets/images/onboarding1.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
            ],
          ),
          OnBoardingSkip(),

          OnboardingDotIndicator(),

          OnboardingNextButton(),
        ],
      ),
    );
  }
}
