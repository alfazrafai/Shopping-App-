import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables to control the onboarding pages

  // update page indicator
  void updatePageIndicator(index) {}

  // jump to the next page
  void dotIndicatorTap(index) {}

  // update the current page index and jump to the next page
  void nextPage() {}

  // skip the onboarding pages
  void skipPage() {}
}
