import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import '../routes/routes_dart.dart';
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
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 16,
        ),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall),

        const Spacer(),
        buttonTitle == "Next"
            ? CustomButton.small(text: buttonTitle, onPressed: controller)
            : buttonTitle == "Get Started"
                ? ElevatedButton(
                    onPressed: () => context.go(Routes.SIGNUP),
                    child: Text('Get Started'))
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
