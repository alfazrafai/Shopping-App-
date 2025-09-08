import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopping_app/features/authentication/screens/login/LoginScreen.dart';

import '../../utils/constant/sizes.dart';
import '../../utils/helper/CHelperClass.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpacing),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/userprofile.gif"),
                width: CHelperFunctions.screenWith(context) * 0.6,
              ),
              SizedBox(height: CSizes.lg),

              Text(
                "Your account has bees created successfully!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: CSizes.lg),
              Text(
                "Welcome to our shopping community. Your profile is all set and ready to use.Start exploring and enjoy exclusive deals today!",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.lg),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text("Continue"),
                ),
              ),
              SizedBox(height: CSizes.lg),
            ],
          ),
        ),
      ),
    );
  }
}
