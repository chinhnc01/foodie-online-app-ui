import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie_app_ui/theme/colors.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
    required this.subText,
  }) : super(key: key);

  final String image, text, subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 320,
          height: 320,
          child: SvgPicture.asset(
            image,
          ),
        ),
        SizedBox(height: 40),
        Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          subText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: grey.withOpacity(0.5),
            height: 2,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
