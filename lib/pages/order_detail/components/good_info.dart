import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'good_item.dart';

class GoodInfo extends StatelessWidget {
  const GoodInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mainPadding),
      child: Column(
        children: [
          GoodItem(
            quantity: '1',
            name: 'Apple Pie',
            price: '\$1.49',
          ),
          GoodItem(
            quantity: '2',
            name: 'Cookies',
            price: '\$1.49',
          ),
          SizedBox(height: 10),
          Divider(
            height: 5,
          ),
        ],
      ),
    );
  }
}
