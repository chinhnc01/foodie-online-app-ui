import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/pages/store_detail/store_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/store_card.dart';



class Stores extends StatelessWidget {
  const Stores({
    Key? key,
    required this.context,
    required this.size,
  }) : super(key: key);

  final BuildContext context;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          delivery: storeList[index]['delivery_time'],
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
    );
  }
}


