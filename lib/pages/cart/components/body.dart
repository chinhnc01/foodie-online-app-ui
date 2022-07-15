import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'delivery_address.dart';
import 'menu.dart';
import 'order_summary.dart';
import 'payment_method.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Menu(),
            SizedBox(height: 20),
            DeliveryAddress(),
            SizedBox(height: 20),
            PaymentMethod(),
            SizedBox(height: 20),
            OrderSummary(),
          ],
        ),
      ),
    );
  }
}
