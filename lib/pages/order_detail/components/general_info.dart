import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/order_status_label.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mainPadding),
      child: Column(
        children: [
          InfoLine(
            title: 'Order Status',
            content: OderStatusLabel(text: 'Past'),
          ),
          InfoLine(
            title: 'Your order number:',
            content: Text(
              '#SOS83868888',
              style: TextStyle(
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
          ),
          InfoLine(
            title: 'Your order from:',
            content: Text(
              'Nguyen Chinh Restaurant',
              style: TextStyle(
                color: primary,
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
          ),
          InfoLine(
            title: 'Delivery Address',
            content: Expanded(
              child: Text(
                '345 Au Co, Nhat Tan, Tay Ho, Ha Noi',
                style: TextStyle(
                  color: textBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: titleFontSize,
                ),
                //overflow: TextOverflow.ellipsis,
                maxLines: 4,
                textAlign: TextAlign.right,
              ),
            ),
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

class InfoLine extends StatelessWidget {
  const InfoLine({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: bottomMainPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: grey, fontSize: 16),
          ),
          SizedBox(width: 40),
          content,
        ],
      ),
    );
  }
}
