import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CHelperFunctions {
  static bool isDark(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static double screenSize(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWith(BuildContext context) {
    return MediaQuery.of(Get.context!).size.width;
  }
}
