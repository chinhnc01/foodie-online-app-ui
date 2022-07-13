import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';


class RestaurantDetailItem extends StatelessWidget {
  const RestaurantDetailItem({
    Key? key,
    required this.text,
    required this.subText,
    required this.icon,
    this.isHasSub = true,
  }) : super(key: key);

  final String text, subText;
  final IconData icon;
  final bool isHasSub;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: primary,
          size: 26,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isHasSub) SizedBox(height: 5),
            if (isHasSub)
              Text(
                subText,
                style: TextStyle(
                  color: textBlack,
                  fontSize: 16,
                ),
              ),
          ],
        )
      ],
    );
  }
}
