import 'package:flutter/material.dart';
import 'package:foodie_app_ui/pages/splash/splash_page.dart';
import 'package:foodie_app_ui/theme/colors.dart';

import 'router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      home: SplashPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: textWhite,
          elevation: 0.5
        ),
      ),
    );
  }
}
