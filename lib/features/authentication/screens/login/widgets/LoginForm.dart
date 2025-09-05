import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/utils/constant/sizes.dart';

import '../../signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your email',
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          SizedBox(height: CSizes.lg),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your password',
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.icon),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("Remember me"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Login")),
          ),
          SizedBox(height: CSizes.sm),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(SignupScreen());
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
