import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final PageController onPressed;

  const CustomButton.large({
    Key? key,
    required this.text,
    this.width = 200,
    this.height = 50,
    required this.onPressed,
  }) : super(key: key);

  const CustomButton.medium({
    Key? key,
    required this.text,
    this.width = 150,
    this.height = 40,
    required this.onPressed,
  }) : super(key: key);

  const CustomButton.small({
    Key? key,
    required this.text,
    this.width = 100,
    this.height = 40,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: () => {
                onPressed.nextPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease)
              },
          child: Text(text),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFF735C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
    );
  }
}
