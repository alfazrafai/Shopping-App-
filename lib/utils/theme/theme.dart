import 'package:flutter/material.dart';
import 'package:shopping_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shopping_app/utils/theme/custom_themes/text_theme.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppBarThem.lightAppBarTheme,
    checkboxTheme: CCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: CChipTheme.lightChipTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: CTextFieldTheme.lightInputDecorationTheme,
    textTheme: CTextTheme.lightTextTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CTextTheme.darkTextTheme,
    appBarTheme: CAppBarThem.darkAppBarTheme,
    checkboxTheme: CCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: CChipTheme.darkChipTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: COutlinedButtonTheme.dartElevatedButtonTheme,
    inputDecorationTheme: CTextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: CElevatedButtonTheme.dartElevatedButtonTheme,
  );
}
