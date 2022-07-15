import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/bill.svg',
              width: 20,
              color: primary,
            ),
            SizedBox(width: 5),
            Text(
              'Order Summary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: textWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(mainPadding),
            child: Column(
              children: [
                OrderSumaryLine(
                  title: '1x  Blue Curacao Soda',
                  price: '\$ 5.66',
                ),
                OrderSumaryLine(
                  title: '1x  Cappuccino',
                  price: '\$ 2.22',
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                OrderSumaryLine(
                  title: 'Subtotal',
                  price: '\$ 7.88',
                ),
                OrderSumaryLine(
                  title: 'Delivery fee',
                  price: '\$ 0.12',
                ),
                OrderSumaryLine(
                  title: 'Discount',
                  price: '\$ -1.22',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OrderSumaryLine extends StatelessWidget {
  const OrderSumaryLine({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: bottomMainPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: grey.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: grey.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
