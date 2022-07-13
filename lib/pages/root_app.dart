import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie_app_ui/pages/home/home_page.dart';
import 'package:foodie_app_ui/pages/profile/profile_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        Center(
          child: Text(
            'Orders',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Center(
          child: Text(
            'Noti',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ProfilePage(),
      ],
    );
  }

  Widget getFooter() {
    List iconItems = [
      'assets/icons/home_icon.svg',
      'assets/icons/order_icon.svg',
      'assets/icons/bell_icon.svg',
      'assets/icons/profile_icon.svg',
    ];
    List textItems = [
      'Home',
      'Orders',
      'Notifications',
      'Profile',
    ];

    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: textWhite,
        border: Border(
          top: BorderSide(
            color: textBlack.withOpacity(0.06),
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            iconItems.length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconItems[index],
                    width: 22,
                    color: pageIndex == index ? primary : textBlack,
                  ),
                  SizedBox(height: 5),
                  Text(
                    textItems[index],
                    style: TextStyle(
                      color: pageIndex == index ? primary : textBlack,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
