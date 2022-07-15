import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app_ui/pages/restaurant_detail/restaurant_detail_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.name,
    required this.image,
    required this.delivery,
  }) : super(key: key);

  final String name, image, delivery;

  @override
  Widget build(BuildContext context) {
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
      actions: [
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantDetailPage(
                  image: image,
                  name: name,
                ),
              ),
            );
          },
        ),
      ],
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: textBlack.withOpacity(0.5),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: textWhite,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: textWhite),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                        left: 12,
                        bottom: 8,
                        top: 8,
                      ),
                      child: Text(
                        'Delivery '+ delivery.toString(),
                        style: TextStyle(
                          color: textWhite,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: textWhite, size: 18),
                      SizedBox(width: 5),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '(2591)',
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
