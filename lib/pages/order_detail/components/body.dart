import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'general_info.dart';
import 'good_info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: Column(
          children: [
            GeneralInfo(),
            GoodInfo(),
          ],
        ),
      ),
    );
  }
}
