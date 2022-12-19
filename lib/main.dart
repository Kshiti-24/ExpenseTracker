import 'package:expensetracker/Pages/homePage2.dart';
import 'package:expensetracker/Pages/signUpPage.dart';
import 'package:expensetracker/Pages/splashPage.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/Pages/homePage1.dart';
import 'package:expensetracker/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool user = false;
  String? name="";


  @override
  void initState() {
    super.initState();
    _initCheck();
  }

  void _initCheck() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('user') == false) {
      setState(() {
        user = false;
        name="Kshitiz";
        // user=dummy;
      });
      print(user);
      print(user);
    }
    else{
      setState(() {
        user=true;
        name=prefs.getString('name')!;
      });
      print(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: SplashPage(user: user,name: name!,),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage1(name: "Kshitiz",),
        MyRoutes.homeRoute2: (context) => HomePage2(name: "Kshitiz",),
        MyRoutes.loginRoute: (context) => SignUpPage(),
      },
    );
  }
}

