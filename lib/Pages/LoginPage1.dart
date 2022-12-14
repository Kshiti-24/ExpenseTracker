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

bool otpVisibility = true;
bool check = false;

class _LoginPage1State extends State<LoginPage1> {
  TextEditingController emailController = TextEditingController();
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
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Welcome Back!!!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          "We missed you!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Lottie.asset("assets/images/login.json",
                        width: 132, height: 132),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
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
                      height: 40,
                    ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "    Login using email",
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Container(
                            width: 83,
                            height: 21,
                            margin: EdgeInsets.fromLTRB(38, 0, 0, 0),
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
                                  fontFamily: 'Poppins',
                                  color: Colors.white70),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        // login(
                        //     nameController.text.toString(),
                        //     emailController.text.toString(),
                        //     passwordController.text.toString());
                        // check ? Verify(emailController.text.toString(),otpController.text.toString()) : login(nameController.text.toString(),emailController.text.toString(),passwordController.text.toString());
                       // check ? Verify(emailController.text.toString(), otpController.text.toString()) : signInOtp(emailController.text.toString());
                       //  Navigator.pushReplacement(
                       //      context,
                       //      MaterialPageRoute(
                       //          builder: (context) => HomePage1()));
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
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
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
  // Future<void> signInOtp(String email) async{
  //   var response= await http.post(Uri.parse("https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
  //       body: json.encode({
  //         "email" : email,
  //         "for_signup": false
  //       })
  //   );
  //   print(email);
  //   print(email);
  //   print(response.body);
  //   String s = response.body.substring(12, response.body.length - 2);
  //   String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
  //   print(s);
  //   print(response.statusCode);
  //   if(response.statusCode==200){
  //     print("succees");
  //     setState(() {
  //       otpVisibility = true;
  //       check = true;
  //     });
  //   }
  //   else{
  //     print("bad request");
  //   }
  // }
  // Future<void> Verify(String email, String otp) async {
  //   print(otp);
  //   var intOtp = int.parse(otp);
  //   print(intOtp);
  //   var response = await http.post(
  //       Uri.parse(
  //           "https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify"),
  //       body: json.encode({"otp": intOtp, "email": email}));
  //   print(intOtp);
  //   print(email);
  //   print(response.body);
  //   String s = response.body.substring(12, response.body.length - 2);
  //   String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
  //   print(s);
  //   print(response.statusCode);
  //   if (otpController != 0 && email.isNotEmpty) {
  //     if (response.statusCode == 200) {
  //       print("done");
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text(s1),
  //         backgroundColor: Colors.blue,
  //       ));
  //
  //       Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => HomePage1()));
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text(s1),
  //         backgroundColor: Colors.red,
  //       ));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text("Not Allowed"),
  //       backgroundColor: Colors.red,
  //     ));
  //   }
  // }
}
