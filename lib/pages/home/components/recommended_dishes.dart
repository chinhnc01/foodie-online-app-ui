import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/pages/store_detail/store_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/dish_card.dart';

class RecommendedDishes extends StatelessWidget {
  const RecommendedDishes({
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
                'Recommended Dishes',
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
                children: List.generate(recommendedDishes.length, (index) {
                  var dishes = recommendedDishes[index];
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
                                image: dishes['image'],
                                name: dishes['name'],
                                delivery: dishes['delivery_time'],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: DishCard(width: 180, dish: dishes),
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
                              image: dishes['image'],
                              name: dishes['name'],
                              delivery: dishes['delivery_time'],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: DishCard(width: 180, dish: dishes),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
