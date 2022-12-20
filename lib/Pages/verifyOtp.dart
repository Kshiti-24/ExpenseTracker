// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'homePage1.dart';
// // import 'signUpPage.dart';
// //
// // class VerifyOtpPage extends StatefulWidget {
// //   const VerifyOtpPage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<VerifyOtpPage> createState() => _VerifyOtpPageState();
// // }
// //
// // class _VerifyOtpPageState extends State<VerifyOtpPage> {
// //   var otpController = TextEditingController();
// //   var emailController = TextEditingController();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Text("Verify Otp"),
// //           centerTitle: true,
// //         ),
// //         body: Column(
// //           children:[ Padding(
// //               padding: EdgeInsets.all(10),
// //               child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   crossAxisAlignment: CrossAxisAlignment.center,
// //                   children: [
// //                     TextFormField(
// //                       controller: emailController,
// //                       decoration: InputDecoration(
// //                         hintText: "Email",
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       height: 20,
// //                     ),
// //                     TextFormField(
// //                       controller: otpController,
// //                       decoration: InputDecoration(
// //                         hintText: "Otp",
// //                       ),
// //                       keyboardType: TextInputType.number,
// //                     ),
// //                     SizedBox(
// //                       height: 20,
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         Verify(emailController.text.toString(),
// //                             otpController.value.hashCode);
// //                       },
// //                       child: Container(
// //                         width: 100,
// //                         height: 50,
// //                         decoration: BoxDecoration(
// //                           color: Colors.indigo,
// //                         ),
// //                         child: Center(child: Text("Verify Otp")),
// //                       ),
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                        signInOtp(emailController.text.toString());
// //                       },
// //                       child: Container(
// //                         width: 100,
// //                         height: 50,
// //                         decoration: const BoxDecoration(
// //                           color: Colors.indigo,
// //                         ),
// //                         child: Center(child: Text("Resend Otp")),
// //                       ),
// //                     )
// //                   ])
// //           ),
// //         ])
// //     );
// //   }
// //
// //   Future<void> Verify(String email, int otp) async {
// //     Response response = await http.post(Uri.parse(
// //         "https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify"),
// //         body: json.encode({
// //           "otp": otp,
// //           "email": email
// //         })
// //     );
// //     print(otp);
// //     print(email);
// //     print(response.body);
// //     String s = response.body.substring(12, response.body.length - 2);
// //     String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
// //     print(s);
// //     print(response.statusCode);
// //     if (otp!=0 && email.isNotEmpty) {
// //       if (response.statusCode == 200) {
// //         print("done");
// //         ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text(s1), backgroundColor: Colors.blue,));
// //
// //         Navigator.pushReplacement(
// //             context, MaterialPageRoute(builder: (context) => HomePage1()));
// //       }
// //       else {
// //         ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text(s1), backgroundColor: Colors.red,));
// //       }
// //     }
// //     else {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text("Not Allowed"), backgroundColor: Colors.red,));
// //     }
// //   }
// //
// //   Future<void> signInOtp(String email) async{
// //     Response response= await http.post(Uri.parse("https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
// //         body: json.encode({
// //           "email" : email
// //         })
// //     );
// //     print(email);
// //     print(email);
// //     print(response.body);
// //     String s = response.body.substring(12, response.body.length - 2);
// //     String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
// //     print(s);
// //     print(response.statusCode);
// //     if(response.statusCode==200){
// //       print("succees");
// //     }
// //     else{
// //       print("bad request");
// //     }
// //   }
// // }
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:lottie/lottie.dart';
// import 'homePage1.dart';
// import 'resetPassword.dart';
// import 'LoginPage.dart';
// import 'package:http/http.dart' as http;
//
// class VerifyPage extends StatefulWidget {
//   String name;
//   String email;
//    VerifyPage({Key? key,required this.name,required this.email}) : super(key: key);
//
//   @override
//   State<VerifyPage> createState() => _VerifyPageState();
// }
//
// class _VerifyPageState extends State<VerifyPage> {
//
//   TextEditingController controller1 = TextEditingController();
//   TextEditingController controller2 = TextEditingController();
//   TextEditingController controller3 = TextEditingController();
//   TextEditingController controller4 = TextEditingController();
//   TextEditingController controller5 = TextEditingController();
//   TextEditingController controller6 = TextEditingController();
//
//   int sum=0;
//   String otp="";
//   int c=100000;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           color: Colors.indigo[100],
//           child: Container(
//             width: 352,
//             height: 645,
//             margin: EdgeInsets.fromLTRB(15, 61, 15, 25),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               color: Colors.indigo[200],
//               borderRadius: BorderRadius.all(Radius.circular(40)),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   offset: const Offset(
//                     5.0,
//                     5.0,
//                   ),
//                   blurRadius: 10.0,
//                   spreadRadius: 4.0,
//                 ), //BoxShadow
//                 BoxShadow(
//                   color: Colors.white,
//                   offset: const Offset(0.0, 0.0),
//                   blurRadius: 4.0,
//                   spreadRadius: 1.0,
//                 ), //BoxShadow
//               ],
//             ),
//             child: Column(children: [
//               SizedBox(
//                 height: 50,
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Text(
//                           "Welcome Back!!!",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                           ),
//                         ),
//                         Text(
//                           "We missed you!",
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: GoogleFonts.poppins().fontFamily,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Lottie.asset("assets/images/login.json",
//                         width: 132, height: 132),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 height: 380,
//                 width: 280,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                   color: Colors.indigo[100],
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       offset: const Offset(
//                         5.0,
//                         5.0,
//                       ),
//                       blurRadius: 10.0,
//                       spreadRadius: 4.0,
//                     ), //BoxShadow
//                     BoxShadow(
//                       color: Colors.indigo,
//                       offset: const Offset(0.0, 0.0),
//                       blurRadius: 2.0,
//                       spreadRadius: 1.0,
//                     ), //BoxShadow
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(width: 6,),
//                         _textFieldOTP(first: true, last: false),
//                         SizedBox(width: 7,),
//                         _textFieldOTP(first: false, last: false),
//                         SizedBox(width: 7,),
//                         _textFieldOTP(first: false, last: false),
//                         SizedBox(width: 7,),
//                         _textFieldOTP(first: false, last: false),
//                         SizedBox(width: 7,),
//                         _textFieldOTP(first: false, last: false),
//                         SizedBox(width: 7,),
//                         _textFieldOTP(first: false, last: false),
//                       ]),
//                     Row(
//                       children: [
//                         Text(
//                           "   Forgot Password ?",
//                           style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,
//                               fontSize: 13),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ResetPasswordPage()));
//                           },
//                           child: Container(
//                             width: 100,
//                             height: 21,
//                             margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
//                             decoration: BoxDecoration(
//                               color: Colors.indigo[200],
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(10)),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black26,
//                                   offset: const Offset(
//                                     5.0,
//                                     5.0,
//                                   ),
//                                   blurRadius: 7.0,
//                                   spreadRadius: 2.0,
//                                 ), //BoxShadow
//                                 BoxShadow(
//                                   color: Colors.white,
//                                   offset: const Offset(0.0, 0.0),
//                                   blurRadius: 7.0,
//                                   spreadRadius: 1.0,
//                                 ), //BoxShadow
//                               ],
//                             ),
//                             child: Center(
//                                 child: Text(
//                                   "Reset Password",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontFamily: GoogleFonts.poppins().fontFamily,
//                                       color: Colors.white70,
//                                       fontSize: 9),
//                                 )),
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // login(
//                         //     nameController.text.toString(),
//                         //     emailController.text.toString(),
//                         //     passwordController.text.toString());
//                         // check ? Verify(emailController.text.toString(),otpController.text.toString()) : login(nameController.text.toString(),emailController.text.toString(),passwordController.text.toString());
//                         // pushReplacement(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (context) => HomePage1()));
//                       },
//                       child: Container(
//                         width: 230,
//                         height: 51,
//                         decoration: BoxDecoration(
//                           color: Colors.indigo[200],
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black26,
//                               offset: const Offset(
//                                 5.0,
//                                 5.0,
//                               ),
//                               blurRadius: 7.0,
//                               spreadRadius: 2.0,
//                             ), //BoxShadow
//                             BoxShadow(
//                               color: Colors.white,
//                               offset: const Offset(0.0, 0.0),
//                               blurRadius: 7.0,
//                               spreadRadius: 1.0,
//                             ), //BoxShadow
//                           ],
//                         ),
//                         child: Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                   fontFamily: GoogleFonts.poppins().fontFamily,
//                                   color: Colors.white70,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold),
//                             )),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _textFieldOTP({bool? first, last,String? controller}) {
//     return Container(
//       height: 50,
//       child: AspectRatio(
//         aspectRatio: 0.7,
//         child: TextField(
//           controller: controller1,
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//             otp=otp+controller1.text.toString();
//             if(last==true){
//
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.purple),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
//   Future<void> Verify() async {
//     print(otp);
//     var intOtp = int.parse(otp);
//     print(intOtp);
//     var response = await http.post(
//         Uri.parse(
//             "https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify"),
//         body: json.encode({"otp": intOtp, "email": email}));
//     print(intOtp);
//     print(widget.email);
//     print(response.body);
//
//     // log(email);
//
//     // log(response.body);
//     String s = response.body.substring(12, response.body.length - 2);
//     String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
//     print(s);
//     print(response.statusCode);
//     if (intOtp != 0 && widget.email.isNotEmpty) {
//       if (response.statusCode == 200) {
//         print("done");
//         // setState(() {
//         //   otpVisibility=false;
//         //   check=false;
//         // });
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(s1,style: TextStyle(
//               fontFamily: GoogleFonts.poppins().fontFamily
//           ),),
//           backgroundColor: Colors.indigo[300],
//         ));
//         SharedPreferences prefs = await SharedPreferences.getInstance();
//         print(prefs.getBool('user'));
//         prefs.setBool('user', true);
//         prefs.setString('name', widget.name);
//         print(prefs.getString('name'));
//         print(prefs.getBool('user'));
//         Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => HomePage1(
//                   name: widget.name,
//                 )));
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(s1,style: TextStyle(
//               fontFamily: GoogleFonts.poppins().fontFamily
//           ),),
//           backgroundColor: Colors.red,
//         ));
//       }
//     } else if (widget.email.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text("Email cannot be empty",style: TextStyle(
//             fontFamily: GoogleFonts.poppins().fontFamily
//         ),),
//         backgroundColor: Colors.red,
//       ));
//     } else if (otp.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text("OTP cannot be empty",style: TextStyle(
//             fontFamily: GoogleFonts.poppins().fontFamily
//         ),),
//         backgroundColor: Colors.red,
//       ));
//     }
//   }
//
//   Future<void> OTP() async {
//     // print(password);
//     print(widget.email);
//     if (widget.email.isNotEmpty) {
//       var response = await http.post(
//           Uri.parse(
//               "https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
//           body: json.encode({
//             'email': email.toString(),
//             "for_signup": true
//             // 'password': password.toString(),
//           }));
//       print(response.statusCode);
//       print(response.body);
//       String s = response.body.substring(12, response.body.length - 2);
//       String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
//       print(s);
//       if (response.statusCode == 200) {
//         print("done");
//         // Verify(emailController.text.toString(), otpController.text.toString());
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(s1,style: TextStyle(
//               fontFamily: GoogleFonts.poppins().fontFamily
//           ),),
//           backgroundColor: Colors.blue,
//         ));
//         // Navigator.pushReplacement(
//         //     context, MaterialPageRoute(builder: (context) => HomePage1()));
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text(s1,style: TextStyle(
//               fontFamily: GoogleFonts.poppins().fontFamily
//           ),),
//           backgroundColor: Colors.red,
//         ));
//       }
//     } else if (widget.email.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text("Email cannot be empty",style: TextStyle(
//             fontFamily: GoogleFonts.poppins().fontFamily
//         ),),
//         backgroundColor: Colors.red,
//       ));
//     }
//   }
// }
