import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app_ui/theme/colors.dart';

import 'components/body.dart';

class RestaurantDetailPage extends StatefulWidget {
  const RestaurantDetailPage({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name, image;

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: getAppBar(),
      ),
      body: Body(restaurantName: widget.name),
    );
  }

  Widget getAppBar() {
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
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: textBlack.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
