import 'package:flutter/material.dart';
import 'package:foodie_app_ui/main.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/order_status_label.dart';

import 'order_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Active Orders',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
            SizedBox(height: 10),
            OrderItem(),
            OrderItem(),
            SizedBox(height: 10),
            Text(
              'Past Orders',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
            SizedBox(height: 10),
            OrderItem(),
            OrderItem(),
            OrderItem(),
            OrderItem(),
            OrderItem(),
          ],
        ),
      ),
    );
  }
}
