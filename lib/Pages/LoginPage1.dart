import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homePage1.dart';
import 'package:lottie/lottie.dart';
import 'package:expensetracker/Pages/LoginPage.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

bool otpVisibility=false;
bool check=false;

class _LoginPage1State extends State<LoginPage1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Colors.indigo[100],
          child: Container(
            width: 352,
            height: 645,
            margin: EdgeInsets.fromLTRB(15, 61, 25, 25),
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
                height: 50,
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
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          "Sign Up to get started!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Lottie.asset(
                        "assets/images/signUp.json", width: 132, height: 132),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.all(10),
                height: 380,
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
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
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
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      visible: otpVisibility,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("    Login using email"),
                        SizedBox(width: 0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          child: Container(
                            width: 83,
                            height: 21,
                            margin: EdgeInsets.fromLTRB(38, 0, 0, 0),
                            decoration: BoxDecoration(
                              color: Colors.indigo[200],
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
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
                            child: Center(child: Text("Login", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: () {
                        // login(
                        //     nameController.text.toString(),
                        //     emailController.text.toString(),
                        //     passwordController.text.toString());
                        // check ? Verify(emailController.text.toString(),otpController.text.toString()) : login(nameController.text.toString(),emailController.text.toString(),passwordController.text.toString());

                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => HomePage1()));
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
                        child: Center(child: check ? Text(
                          "Verify", style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),) : Text("Login", style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),)),
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
}