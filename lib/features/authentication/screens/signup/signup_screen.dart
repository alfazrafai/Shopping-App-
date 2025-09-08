import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/styles/CSpacingStyle.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginDivider.dart';
import 'package:shopping_app/features/authentication/screens/login/widgets/LoginFooter.dart';
import 'package:shopping_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shopping_app/utils/constant/colors.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../../../utils/helper/CHelperClass.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(title: Text("Signup Screen")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpacing),
          child: Column(
            children: [
              Text(
                "Let's get you started",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: CSizes.lg),
              SignupForm(dark: dark),
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
