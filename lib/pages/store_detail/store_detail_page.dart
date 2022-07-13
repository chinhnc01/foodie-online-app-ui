import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/product_json.dart';
import 'package:foodie_app_ui/pages/store_detail/components/custom_app_bar.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/padding.dart';


class StoreDetailPage extends StatefulWidget {
  const StoreDetailPage({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: CustomAppBar(image: widget.image, name: widget.name),
      ),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Menu",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Most ordered right now",
                  style: TextStyle(
                      fontSize: 15, color: textBlack.withOpacity(0.8)),
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: List.generate(productItems.length, (index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: (size.width * 0.75) - 40,
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productItems[index]['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      productItems[index]['price'],
                                      style: TextStyle(
                                        color: textBlack,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      productItems[index]['discount'],
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: textBlack,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    productItems[index]['image'],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.8,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;

    return Container(
      height: 90,
      width: size.width,
      decoration: BoxDecoration(
        color: textWhite,
        border: Border(
          top: BorderSide(
            color: textBlack.withOpacity(0.06),
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width - 40,
            height: 50,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: textWhite),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'View your cart',
                    style: TextStyle(
                      color: textWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$ 9.98',
                    style: TextStyle(
                      color: textWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
