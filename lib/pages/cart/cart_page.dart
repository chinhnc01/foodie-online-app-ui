import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';

import 'components/body.dart';
import 'components/custom_bot_nav_bar.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textFieldBg,
      appBar: AppBar(
        title: Text(
          'Tube Coffee (Canadia Park)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textBlack,
            fontSize: titleFontSize,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
