import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie_app_ui/pages/login/components/text_field_container.dart';
import 'package:foodie_app_ui/theme/colors.dart';
import 'package:foodie_app_ui/theme/helper.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.5,
      backgroundColor: textWhite,
      title: Text(
        'Edit Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textBlack,
          fontSize: 16,
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/arrow_back_icon.svg',
          color: primary,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget getBody() {
    return Padding(
      padding:
          const EdgeInsets.only(left: leftMainPadding, right: rightMainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              'https://vnn-imgs-a1.vgcloud.vn/image1.ictnews.vn/_Files/2020/03/17/trend-avatar-1.jpg',
            ),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 25),
          TextFieldContainer(title: 'Full name', hintText: 'Nguyen Chinh'),
          SizedBox(height: 25),
          TextFieldContainer(title: 'Phone Number', hintText: '0938688888'),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 45,
              width: 141,
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Update',
                    style: TextStyle(
                      color: textWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 12),
                  getSvgIcon('arrow_forward_icon.svg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
