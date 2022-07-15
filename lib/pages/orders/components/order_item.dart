import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app_ui/pages/order_detail/order_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/order_status_label.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderDetailPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: bottomMainPadding),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: textWhite, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(mainPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tube Coffee (Canadia Park)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '\$ 2.21',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Capuchino',
                          style: TextStyle(
                            color: grey,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '29 Sep, 16:10',
                          style: TextStyle(
                            color: grey,
                          ),
                        ),
                      ],
                    ),
                    OderStatusLabel(text: 'On Delivery'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
