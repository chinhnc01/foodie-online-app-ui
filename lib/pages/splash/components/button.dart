import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.press,
    this.isLast = false,
  }) : super(key: key);

  final VoidCallback press;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isLast ? 'Get Start' : 'Next',
              style: TextStyle(
                color: textWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
