import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/success_screen.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/helper/CHelperClass.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
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
                "Password Reset Email Sent",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: CSizes.lg),
              Text(
                "Your security is our priority We’ve sent a reset link to your registered email Follow it to safely recover your account.",
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
                  child: Text("Done"),
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
