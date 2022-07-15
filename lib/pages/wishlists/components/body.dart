import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/store_json.dart';
import 'package:foodie_app_ui/theme/padding.dart';
import 'package:foodie_app_ui/widgets/store_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: topMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            storeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(
                bottom: bottomMainPadding,
                left: leftMainPadding,
              ),
              child: StoreCard(
                store: storeList[index],
                width: size.width - mainPadding * 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
