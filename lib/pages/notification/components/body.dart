import 'package:flutter/material.dart';
import 'package:foodie_app_ui/data/notification_json.dart';
import 'package:foodie_app_ui/pages/notification/components/noti_item.dart';
import 'package:foodie_app_ui/theme/padding.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mainPadding),
      child: Column(
        children: List.generate(
          notifications.length,
          (index) => NotiItem(
            title: notifications[index]['title'],
            description: notifications[index]['description'],
            status: notifications[index]['state'],
            createTime: notifications[index]['created_at'],
          ),
        ),
      ),
    );
  }
}
