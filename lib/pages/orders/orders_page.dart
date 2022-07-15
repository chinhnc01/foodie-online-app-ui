import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';

import 'components/body.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textFieldBg,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Orders',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textBlack,
            fontSize: titleFontSize,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
