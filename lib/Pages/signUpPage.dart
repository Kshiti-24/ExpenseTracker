import 'package:expensetracker/Pages/LoginPage.dart';
import 'package:expensetracker/Pages/LoginPage1.dart';
import 'package:expensetracker/Pages/homePage1.dart';
import 'package:expensetracker/Pages/verifyOtp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lottie/lottie.dart';
import 'dart:core';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
String? finalEmail;
bool otpVisibility = false;
bool check = false;
bool isLoggedIn = false;
String? email = '';

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.indigo[100],
          child: Container(
            width: 352,
            height: 645,
            margin: EdgeInsets.fromLTRB(15, 61, 15, 25),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.indigo[200],
              borderRadius: BorderRadius.all(Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 4.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
              ],
            ),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Welcome!!!",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        Text(
                          "Sign Up to get started!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Lottie.asset("assets/images/signUp1.json",
                        width: 132, height: 132),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 460,
                width: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.indigo[100],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 4.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.indigo,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        suffixIcon: Icon(
                          Icons.drive_file_rename_outline,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        suffixIcon: Icon(
                          Icons.lock_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Visibility(
                      child: TextFormField(
                        controller: otpController,
                        decoration: InputDecoration(
                          labelText: "OTP",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          suffixIcon: Icon(
                            Icons.password_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      visible: otpVisibility,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "    Already a user ?",
                          style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 13),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                            // otp(emailController.text.toString());
                          },
                          child: Container(
                            width: 65,
                            height: 21,
                            margin: EdgeInsets.fromLTRB(51, 0, 0, 0),
                            decoration: BoxDecoration(
                              color: Colors.indigo[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: const Offset(
                                    5.0,
                                    5.0,
                                  ),
                                  blurRadius: 7.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 7.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Colors.white70,
                                fontSize: 12
                              ),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () async {
                        // login(
                        //     nameController.text.toString(),
                        //     emailController.text.toString(),
                        //     passwordController.text.toString());
                        check
                            ? Verify(emailController.text.toString(),
                                otpController.text.toString())
                            : login(
                                nameController.text.toString(),
                                emailController.text.toString(),
                                passwordController.text.toString());

                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage1()));
                      },
                      child: Container(
                        width: 230,
                        height: 51,
                        decoration: BoxDecoration(
                          color: Colors.indigo[200],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 7.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 7.0,
                              spreadRadius: 1.0,

                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                            child: check
                                ? Text(
                                    "Verify",
                                    style: TextStyle(
                                        fontFamily: GoogleFonts.poppins().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                    ),
                                  )
                                : Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontFamily: GoogleFonts.poppins().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  )),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> login(String name, String email, String password) async {
    print(password);
    print(email);
    print(name);
    if (password.isNotEmpty && email.isNotEmpty && name.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://auth-backend-production-054a.up.railway.app/api/v1/auth/signup"),
          body: json.encode({
            'name': name.toString(),
            'email': email.toString(),
            'password': password.toString(),
          }));
      print(response.statusCode);
      print(response.body);
      String s = response.body.substring(12, response.body.length - 2);
      String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
      print(s);
      if (response.statusCode == 200) {
        print("done");
        setState(() {
          otpVisibility = true;
          check = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("OTP sent to your email address"),
          backgroundColor: Colors.indigo[300],
        ));
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => HomePage1()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1),
          backgroundColor: Colors.red,
        ));
      }
    } else if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Name cannot be empty"),
        backgroundColor: Colors.red,
      ));
    } else if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email cannot be empty"),
        backgroundColor: Colors.red,
      ));
    } else if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password cannot be empty"),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> Verify(String email, String otp) async {
    print(otp);
    var intOtp = int.parse(otp);
    print(intOtp);
    var response = await http.post(
        Uri.parse(
            "https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify"),
        body: json.encode({"otp": intOtp, "email": email}));
    print(intOtp);
    print(email);
    print(response.body);

    // log(email);

    // log(response.body);
    String s = response.body.substring(12, response.body.length - 2);
    String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
    print(s);
    print(response.statusCode);
    if (otpController != 0 && email.isNotEmpty) {
      if (response.statusCode == 200) {
        print("done");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1),
          backgroundColor: Colors.blue,
        ));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage1(
                      name: nameController.text.toString(),
                    )));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1),
          backgroundColor: Colors.red,
        ));
      }
    } else if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email cannot be empty"),
        backgroundColor: Colors.red,
      ));
    } else if (otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("OTP cannot be empty"),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> otp(String email) async {
    // print(password);
    print(email);
    if (email.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
          body: json.encode({
            'email': email.toString(),
            "for_signup": true
            // 'password': password.toString(),
          }));
      print(response.statusCode);
      print(response.body);
      String s = response.body.substring(12, response.body.length - 2);
      String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
      print(s);
      if (response.statusCode == 200) {
        print("done");
        setState(() {
          otpVisibility = true;
          check = true;
          // passwordVisibility=true;
        });
        // Verify(emailController.text.toString(), otpController.text.toString());
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1),
          backgroundColor: Colors.blue,
        ));
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => HomePage1()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1),
          backgroundColor: Colors.red,
        ));
      }
    } else if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email cannot be empty"),
        backgroundColor: Colors.red,
      ));
    }
  }
}
