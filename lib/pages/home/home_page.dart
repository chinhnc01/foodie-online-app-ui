import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/category_json.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/pages/store_detail/store_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/main_app_bar.dart';
import 'package:foodie_app_ui/widgets/store_card.dart';

import 'components/recommended_dishes.dart';
import 'components/special_orders.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: textWhite,
      appBar: PreferredSize(
        child: MainAppBar(size: size),
        preferredSize: Size.fromHeight(80),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: getHeight(size.width, '21:9'),
            child: Image.asset(
              getImage('promotion.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: mainPadding,
                bottom: mainPadding,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    storeTypes.length,
                    (index) => Container(
                      width: 120,
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          getSvgIcon(storeTypes[index]['image']),
                          SizedBox(
                            height: 5,
                          ),
                          Text(storeTypes[index]['name']),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SpecicalOffers(),
          RecommendedDishes(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: light),
            child: Column(
              children: [
                Column(
                  children: List.generate(
                    storeList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: bottomMainPadding),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoreDetailPage(
                                image: storeList[index]['image'],
                                name: storeList[index]['name'],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: StoreCard(
                            width: size.width - mainPadding * 2,
                            store: storeList[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


