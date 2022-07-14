import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class NotiItem extends StatelessWidget {
  const NotiItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: bottomMainPadding),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: textWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(mainPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SOS 56588386',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titleFontSize,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your order has been picked up.',
                    style: TextStyle(
                      color: grey.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '29 minutes ago',
                    style: TextStyle(
                      color: grey.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      child: Text(
                        'Completed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: textWhite),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
