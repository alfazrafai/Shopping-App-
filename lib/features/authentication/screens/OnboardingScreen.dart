import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helper/CHelperClass.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(
                image: "assets/images/onboarding1.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
              OnBoardingPage(
                image: "assets/images/onboarding1.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
              OnBoardingPage(
                image: "assets/images/onboarding1.gif",
                title: "Build Your Online Store with Confidence",
                subTitle:
                    "Easily set up your products, customize your storefront, and create a seamless shopping experience for your customers.",
              ),
            ],
          ),
          OnBoardingSkip(),
        ],
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CDeviceUtility.getAppBarHeigh(),
      right: CSizes.defaultSpacing,
      child: TextButton(onPressed: () {}, child: Text("Skip")),
    );
  }
}

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
            width: CHelperClass.screenWith(context) * 0.8,
            height: CHelperClass.screenHeight(context) * 0.6,
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
