import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String buttonTitle;
  final PageController controller;
  final int pages;

  const SplashScreenItem({
    super.key,
    required this.buttonTitle,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.controller,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(
        //   height: 20,
        // ),
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height * 0.55,
        ),
        Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(
          height: 16,
        ),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black)),

        const Spacer(),
        buttonTitle == "Next"
            ? CustomButton.small(text: buttonTitle, onPressed: controller)
            : buttonTitle == "Get Started"
                ? CustomButton.medium(text: buttonTitle, onPressed: controller)
                : CustomButton.large(text: buttonTitle, onPressed: controller),

        const Spacer(),
        SmoothPageIndicator(
          controller: controller,
          count: pages,
          effect: const ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            expansionFactor: 3,
            spacing: 3,
            paintStyle: PaintingStyle.fill,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
