import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../splash_screen/splash_screen_item.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final PageController controller;

  late final List<SplashScreenItem> pages;

  @override
  void initState() {
    super.initState();
    controller = PageController(viewportFraction: 1, keepPage: true);
    pages = [
      SplashScreenItem(
        buttonTitle: "Next",
        image: "assets/splash screen image 1.png",
        subtitle:
            "Looking for people to ask your life’s most pressing questions?",
        title: "Do you have Questions in mind?",
        controller: controller,
        pages: 2,
      ),
      SplashScreenItem(
        buttonTitle: "Get Started",
        image: "assets/splash screen image 2.png",
        subtitle: "Discover new perspectives and insights every day.",
        title: "Welcome to Ask Anything!",
        controller: controller,
        pages: 2,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: pages[index % pages.length],
          ),
        ),
      ),
    );
  }
}
