import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          print('called on tap');
        },
        child: Padding(
          padding: const EdgeInsets.all(mainPadding),
          child: Container(
            width: double.infinity - mainPadding * 2,
            height: kToolbarHeight,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Reorder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
