import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/theme/colors.dart';

import 'components/body.dart';
import 'components/bottom_nav_bar.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: getAppBar(),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: primary,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/arrow_back_icon.svg',
          color: textWhite,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(storeItems[0]['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: textBlack.withOpacity(0.5),
            ),
            child: SafeArea(
              child: Center(
                child: Text(
                  storeItems[0]['name'],
                  style: TextStyle(
                    color: textWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
