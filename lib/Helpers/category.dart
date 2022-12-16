import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  Category({Key? key,required this.img,required this.text }) : super(key: key);
  String img;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEEEEEE)),
          shape: BoxShape.circle,
        ),
        child: Image.asset(img),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        text,
        style: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 12,
        ),
      ),
    ]);
  }
}
