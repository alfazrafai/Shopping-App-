import 'package:flutter/material.dart';

import '../../../../../utils/constant/sizes.dart' show CSizes;

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? "assets/logos/light_logo.png" : "assets/logos/dark_logo.png",
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
    );
  }
}
