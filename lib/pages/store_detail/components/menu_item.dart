import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/product_json.dart';
import 'package:foodie_app_ui/theme/colors.dart';


class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
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
  }
}
