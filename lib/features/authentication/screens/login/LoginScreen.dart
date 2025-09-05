import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/styles/CSpacingStyle.dart';
import 'package:shopping_app/utils/constant/colors.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark
                          ? "assets/logos/light_logo.png"
                          : "assets/logos/dark_logo.png",
                    ),
                  ),
                  Text(
                    "WellCome Back!",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: CSizes.sm),
                  Text(
                    "Access your account to shop seamlessly \nLog in for exclusive deals and faster checkout",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: CSizes.lg),
                ],
              ),

              Form(
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
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(height: CSizes.sm),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Create Account"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: CSizes.lg),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: CColors.darkGrey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text('Or sign in with'),
                  Flexible(
                    child: Divider(
                      color: CColors.darkGrey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: CSizes.lg),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: CColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        height: 20,
                        "assets/logos/dark_logo.png",
                      ),
                    ),
                  ),
                  SizedBox(width: CSizes.lg),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: CColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        height: 20,
                        "assets/logos/dark_logo.png",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
