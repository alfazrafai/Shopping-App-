import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/styles/CSpacingStyle.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginDivider.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginFooter.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginForm.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginHeader.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../../utils/helper/CHelperClass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDark(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),
              LoginForm(),
              SizedBox(height: CSizes.lg),
              LoginDivider(),
              SizedBox(height: CSizes.lg),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
