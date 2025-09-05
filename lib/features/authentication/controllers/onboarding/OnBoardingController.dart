import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping_app/features/authentication/screens/login/LoginScreen.dart';

import '../../screens/OnboardingScreen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables to control the onboarding pages
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  // update page indicator
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  // jump to the next page
  void dotIndicatorTap(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // update the current page index and jump to the next page
  void nextPage() {
    if (currentIndex.value == 2) {
      Get.to(() => const LoginScreen());
      currentIndex.value++;
    } else {
      int page = currentIndex.value++;
      pageController.jumpToPage(page);
    }
  }

  // skip the onboarding pages
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
