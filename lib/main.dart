import 'package:flutter/material.dart';
import 'package:expensetracker/Pages/homePage1.dart';
import 'package:expensetracker/utils/routes.dart';
import 'package:expensetracker/widgets/theme.dart';


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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: HomePage1(),
      routes: {
        MyRoutes.homeRoute:(context) => HomePage1(),
      },
    );
  }
}
