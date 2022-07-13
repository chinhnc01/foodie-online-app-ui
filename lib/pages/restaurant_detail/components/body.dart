import 'package:flutter/material.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'restaurant_detail_item.dart';

class Body extends StatelessWidget {
  const Body({required this.restaurantName, Key? key}) : super(key: key);

  final String restaurantName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(mainPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                restaurantName,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              RestaurantDetailItem(
                icon: Icons.star,
                subText: '2591 People rated',
                text: '4.5',
              ),
              SizedBox(height: 20),
              RestaurantDetailItem(
                icon: Icons.map,
                text: '345 Au Co, Nhat Tan, Tay Ho, Ha Noi, Viet Nam',
                subText: '',
                isHasSub: false,
              ),
              SizedBox(height: 20),
              RestaurantDetailItem(
                icon: Icons.lock_clock,
                subText: 'Monday - Sunday',
                text: '06:30 - 20:00',
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width / 2,
          child: Image.asset(
            'assets/images/map.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
