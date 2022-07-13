import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodie_app_ui/pages/account/account_page.dart';
import 'package:foodie_app_ui/pages/profile/components/profile_item.dart';
import 'package:foodie_app_ui/pages/wishlists/wishlists_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/fontsizes.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        SafeArea(
          child: Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(color: light),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://vnn-imgs-a1.vgcloud.vn/image1.ictnews.vn/_Files/2020/03/17/trend-avatar-1.jpg',
                  ),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 10),
                Text(
                  'Nguyen Chinh',
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountPage(),
                      ),
                    );
                  },
                  child: Text(
                    'View Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ProfileItem(
          icon: 'heart_icon.svg',
          name: 'Wishlists',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Wishlists(),
              ),
            );
          },
        ),
        ProfileItem(icon: 'help_icon.svg', name: 'Help', press: () {}),
        ProfileItem(icon: 'about_icon.svg', name: 'About', press: () {}),
        ProfileItem(icon: 'logout_icon.svg', name: 'Sign out', press: () {}),
      ],
    );
  }
}
