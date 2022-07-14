import 'package:flutter/material.dart';

import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'components/body.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textFieldBg,
      appBar: getAppBar(),
      body: Body(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: textWhite,
      elevation: 0,
      title: Text(
        'Notification',
        style: TextStyle(
          color: textBlack,
          fontWeight: FontWeight.bold,
          fontSize: titleFontSize,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:rightMainPadding),
          child: Center(
            child: Text(
              'Clear',
              style: TextStyle(
                color: textFieldBg,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
