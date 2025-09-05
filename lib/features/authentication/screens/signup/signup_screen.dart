import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/styles/CSpacingStyle.dart';
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

              Form(
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
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(Iconsax.eye_slash),
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),

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
                                text: 'I agree to the',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: 'privacy',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .apply(
                                      color: dark
                                          ? CColors.white
                                          : CColors.primary,
                                    ),
                              ),
                              TextSpan(
                                text: 'and',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
