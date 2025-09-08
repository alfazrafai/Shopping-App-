import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/features/authentication/screens/password_configration/reset_password_screen.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(CSizes.defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: CSizes.lg),
            Text(
              "Reset your password in just a few steps Provide your email to get started",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: CSizes.lg),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(height: CSizes.lg),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(ResetPasswordScreen());
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
