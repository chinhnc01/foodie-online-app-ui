import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
            ),
          ),
          SizedBox(height: 10),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: textWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: topMainPadding,
              left: leftMainPadding,
              right: rightMainPadding,
            ),
            child: Column(
              children: [
                MenuItem(
                  title: 'Cappuchino',
                  description: 'No Sweet',
                  price: '\$ 2.21',
                ),
                MenuItem(
                  title: 'Blue Curacao Soda',
                  description: 'No Sweet',
                  price: '\$ 3.5',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
