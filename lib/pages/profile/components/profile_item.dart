import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  final String icon, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
