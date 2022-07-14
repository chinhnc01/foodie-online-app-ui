import 'package:flutter/material.dart';
import 'package:foodie_app_ui/pages/login/login_page.dart';
import 'package:foodie_app_ui/pages/splash/components/splash_content.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/padding.dart';

import 'button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  List splashData = [
    {
      'text': 'Search Online ',
      'subText':
          'Do you love to order food online from your favorite restaurants? Use Foodie to keep in touch faster, easier...',
      'image': 'assets/icons/welcome1.svg'
    },
    {
      'text': 'Order Now',
      'subText':
          'The harder it is your hungry customers to find the ordering buttons on your mobile?',
      'image': 'assets/icons/welcome2.svg'
    },
    {
      'text': 'Delivery',
      'subText':
          'Now get more than just your favorite food at your doorstep Introducing Foodies',
      'image': 'assets/icons/welcome3.svg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: mainPadding * 1.5),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: grey.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Expanded(
                flex: 4,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image'],
                    subText: splashData[index]['subText'],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    Button(
                      press: () {
                        if (currentPage == splashData.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: _kDuration,
                          curve: _kCurve,
                        );
                      },
                      isLast: currentPage == splashData.length - 1,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot({int? index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? primary : grey.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
    );
  }
}
