import 'dart:async';
import 'package:expensetracker/Pages/LoginPage.dart';
import 'package:expensetracker/Pages/homePage1.dart';
import 'package:expensetracker/Pages/signUpPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  final bool user;
  final String name;

  const SplashPage({Key? key, required this.user, required this.name})
      : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

String? finalEmail;

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() {
    var duration = const Duration(seconds: 2, milliseconds: 900);
    print(widget.user);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                widget.user ? HomePage1(name: widget.name) : SignUpPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        color: Colors.black,
        child: Lottie.asset(
          'assets/images/splash.json',
        ),
      ),
      SizedBox(
        height: 50,
      ),
      SizedBox(
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Budgeteer',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
                speed: Duration(seconds: 1)
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,

          ),
        ),
      ),

    ]);

  }

  List<MaterialColor> colorizeColors = [
    Colors.teal,
    Colors.indigo,
    // Colors.purple,
    Colors.deepPurple,
  ];

  var  colorizeTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: GoogleFonts.poppins().fontFamily,
    backgroundColor: Colors.black,
    fontWeight: FontWeight.bold
  );
}
