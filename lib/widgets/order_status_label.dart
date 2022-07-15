import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';

class OderStatusLabel extends StatelessWidget {
  const OderStatusLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: textWhite,
          ),
        ),
      ),
    );
  }
}
