import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatelessWidget {
  Task({Key? key,required this.img,required this.t1,required this.t2,required this.color}) : super(key: key);
  String img;
  String t1;
  String t2;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 152,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEEEEEE)),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Container(
                            margin:
                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight:
                                  Radius.circular(20),
                                  topRight: Radius.circular(60),
                                  topLeft: Radius.circular(20)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin:
                          EdgeInsets.fromLTRB(23, 23, 0, 0),
                          child: Image.asset(
                              img)),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 41,
                    height: 48,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Text(
                      t1,
                      style: TextStyle(
                        fontSize: 35,
                        color: color,
                        fontWeight: FontWeight.bold,
                        // fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  )
                ]),
            Center(
                child: Column(
                  children: [
                    Text(
                      t2,
                      style: TextStyle(
                          color: Color(0xFF0C0C0C),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: GoogleFonts.poppins().fontFamily
                      ),
                    ),
                    Text(
                      "Create category and",
                      style: TextStyle(
                          fontSize: 9, fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Text(
                      "earn ₹25",
                      style: TextStyle(
                          fontSize: 9, fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                  ],
                ))
          ]),
    );
  }
}