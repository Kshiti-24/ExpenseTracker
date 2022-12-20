import 'package:expensetracker/Pages/LoginPage1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homePage1.dart';
import 'package:lottie/lottie.dart';
import 'package:expensetracker/Pages/LoginPage.dart';
import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

bool otpVisibility = false;
bool check = false;
bool passwordVisibility = false;

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController otpController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                          "Don't Worry!!!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        Text(
                          "Change your password!",
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
                    child: Lottie.asset("assets/images/reset.json",
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
                      height: 25,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        suffixIcon: Icon(Icons.email_outlined,size: 20,color: Colors.black,),
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
                          labelStyle: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          suffixIcon: GestureDetector(
                            onTap:() async { otp(emailController.text.toString());},
                            child: Icon(
                              Icons.refresh_outlined,
                              size: 36,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      visible: otpVisibility,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Visibility(
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "New Password",
                          labelStyle: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          suffixIcon: Icon(Icons.lock_outlined,size: 20,color: Colors.black,),
                        ),
                        // keyboardType: TextInputType.number,
                      ),
                      visible: passwordVisibility,
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    GestureDetector(
                      onTap: () {
                            // passwordController.text.toString());
                        check ?reset(otpController.text.toString(), emailController.text.toString(), passwordController.text.toString()): otp(emailController.text.toString());
                        // Verify(emailController.text.toString(),otpController.text.toString())
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => LoginPage1()));
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
                                        color: Colors.white70),
                                  )
                                : Text(
                                    "Reset Password",
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

  Future<void> reset(String otp ,String email, String password) async {

    print(password);
    print(email);
    print(otp);
    var intOtp = int.parse(otp);
    print(intOtp);
    if (password.isNotEmpty && email.isNotEmpty ) {
      var response = await http.post(
          Uri.parse(
              "https://auth-backend-production-054a.up.railway.app/api/v1/auth/reset"),
          body: json.encode({
            'otp' : intOtp,
            'email': email.toString(),
            'new_password': password.toString(),
          }));
      print(response.statusCode);
      print(response.body);
      String s = response.body.substring(12, response.body.length - 2);
      String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
      print(s);
      if (response.statusCode == 200) {
        print("done");
        setState(() {
          otpVisibility = false;
          check = false;
          passwordVisibility=false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1,style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          backgroundColor: Colors.indigo[300],
        ));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1,style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          backgroundColor: Colors.red,
        ));
      }
    }
    else if(otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password cannot be empty",style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily
        ),),
        backgroundColor: Colors.red,
      ));
    }
    else if(email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email cannot be empty",style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily
        ),),
        backgroundColor: Colors.red,
      ));
    }
    else if(password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password cannot be empty",style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily
        ),),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> otp( String email) async {
    // print(password);
    print(email);
    if (email.isNotEmpty ) {
      var response = await http.post(
          Uri.parse(
              "https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
          body: json.encode({
            'email': email.toString(),
            "for_signup": false
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
          passwordVisibility=true;
        });
        // Verify(emailController.text.toString(), otpController.text.toString());
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1,style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          backgroundColor: Colors.indigo[300],
        ));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("You can click on the refresh icon in OTP to resend the OTP",style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          duration: Duration(seconds: 7),
          backgroundColor: Colors.indigo[300],
        ));
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => HomePage1()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(s1,style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          backgroundColor: Colors.red,
        ));
      }
    }
    else if(email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email cannot be empty",style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily
        ),),
        backgroundColor: Colors.red,
      ));
    }
  }

}
