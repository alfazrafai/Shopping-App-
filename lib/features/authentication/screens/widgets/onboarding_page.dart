import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/sizes.dart' show CSizes;
import 'package:shopping_app/utils/helper/CHelperClass.dart'
    show CHelperFunctions;

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpacing),
      child: Column(
        children: [
          Image(
            width: CHelperFunctions.screenWith(context) * 0.8,
            height: CHelperFunctions.screenHeight(context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
