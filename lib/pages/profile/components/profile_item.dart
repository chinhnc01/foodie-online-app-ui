import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.press,
  }) : super(key: key);

  final String icon, name;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: Row(
          children: [
            getSvgIcon(icon),
            SizedBox(width: 20),
            Text(
              name,
              style: TextStyle(
                color: grey,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
