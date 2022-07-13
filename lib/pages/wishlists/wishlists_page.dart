import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';

import 'components/body.dart';

class Wishlists extends StatelessWidget {
  const Wishlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: grey,
        ),
        centerTitle: true,
        title: Text(
          'Wish List',
          style: TextStyle(
            color: grey,
            fontSize: 16,
          ),
        ),
        backgroundColor: textWhite,
        elevation: 0.5,
      ),
      body: Body(),
    );
  }
}
