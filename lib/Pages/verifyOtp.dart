import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homePage1.dart';
import 'signUpPage.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({Key? key}) : super(key: key);

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  var otpController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Verify Otp"),
          centerTitle: true,
        ),
        body: Column(
          children:[ Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: otpController,
                      decoration: InputDecoration(
                        hintText: "Otp",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Verify(emailController.text.toString(),
                            otpController.value.hashCode);
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                        ),
                        child: Center(child: Text("Verify Otp")),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                       signInOtp(emailController.text.toString());
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.indigo,
                        ),
                        child: Center(child: Text("Resend Otp")),
                      ),
                    )
                  ])
          ),
        ])
    );
  }

  Future<void> Verify(String email, int otp) async {
    Response response = await http.post(Uri.parse(
        "https://auth-backend-production-054a.up.railway.app/api/v1/auth/verify"),
        body: json.encode({
          "otp": otp,
          "email": email
        })
    );
    print(otp);
    print(email);
    print(response.body);
    String s = response.body.substring(12, response.body.length - 2);
    String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
    print(s);
    print(response.statusCode);
    if (otp!=0 && email.isNotEmpty) {
      if (response.statusCode == 200) {
        print("done");
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(s1), backgroundColor: Colors.blue,));

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage1()));
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(s1), backgroundColor: Colors.red,));
      }
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Not Allowed"), backgroundColor: Colors.red,));
    }
  }

  Future<void> signInOtp(String email) async{
    Response response= await http.post(Uri.parse("https://auth-backend-production-054a.up.railway.app/api/v1/auth/send-otp"),
        body: json.encode({
          "email" : email
        })
    );
    print(email);
    print(email);
    print(response.body);
    String s = response.body.substring(12, response.body.length - 2);
    String s1 = s[0].toUpperCase() + s.substring(1, s.length) + ".";
    print(s);
    print(response.statusCode);
    if(response.statusCode==200){
      print("succees");
    }
    else{
      print("bad request");
    }
  }
}