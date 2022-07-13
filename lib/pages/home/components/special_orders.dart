import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/pages/store_detail/store_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/store_card.dart';


class SpecicalOffers extends StatelessWidget {
  const SpecicalOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: light,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: topMainPadding,
          bottom: bottomMainPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: leftMainPadding,
                right: rightMainPadding,
              ),
              child: Text(
                'Special Offers',
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  storeItems.length,
                  (index) {
                    var store = storeItems[index];
                    if (index == 0) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: leftMainPadding,
                          right: rightMainPadding,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoreDetailPage(
                                  image: store['image'],
                                  name: store['name'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            child: StoreCard(
                              width: 280,
                              store: store,
                            ),
                          ),
                        ),
                      );
                    }
                    return Padding(
                      padding: EdgeInsets.only(right: rightMainPadding),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoreDetailPage(
                                image: store['image'],
                                name: store['name'],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: StoreCard(
                            width: 280,
                            store: store,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
