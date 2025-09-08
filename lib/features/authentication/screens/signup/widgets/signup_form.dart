import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../verify_email.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: CSizes.sm),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: CSizes.lg),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: CSizes.lg),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: CSizes.lg),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: CSizes.lg),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.user),
            ),
          ),

          SizedBox(height: CSizes.lg),

          Row(
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: CSizes.sm),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'I agree to the ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'privacy ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? CColors.white : CColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? CColors.white : CColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Terms of us',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? CColors.white : CColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? CColors.white : CColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: CSizes.lg),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
