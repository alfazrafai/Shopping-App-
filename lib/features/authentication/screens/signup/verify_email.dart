import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

import '../../../../common/widgets/success_screen.dart';
import '../login/LoginScreen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
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
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.sm),
              Text(
                "test@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.lg),
              Text(
                "We’ve sent a verification link to your email address.Please check your inbox and click the link to verify.If you don’t see it, check your spam or request a new link.",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.lg),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(SuccessScreen());
                  },
                  child: Text("Continue"),
                ),
              ),
              SizedBox(height: CSizes.lg),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Link",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
