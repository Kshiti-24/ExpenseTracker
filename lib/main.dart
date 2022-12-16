import 'package:expensetracker/Pages/homePage2.dart';
import 'package:expensetracker/Pages/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/Pages/homePage1.dart';
import 'package:expensetracker/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: SignUpPage(),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage1(name: "Kshitiz",),
        MyRoutes.homeRoute2: (context) => HomePage2(name: "Kshitiz",),
        MyRoutes.loginRoute: (context) => SignUpPage(),
      },
    );
  }
}

