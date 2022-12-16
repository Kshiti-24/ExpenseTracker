import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 312,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Color(0xFFEEEEEE)),
      ),
      child: Column(
        children: [
          Container(
            height: 135,
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 47, 0),
            child: Text(
              "4 methods of calculating\nNetwork,Which no one will\ntell you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
          //   child: Text(
          //     "Network,Which no one will",
          //     style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         fontFamily: GoogleFonts.poppins().fontFamily),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 155, 0),
            child: Text(
              "Read Time: 8 mins",
              style: TextStyle(
                  color: Color(0xFF303F9F),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 264,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png')),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Ann Korkowski",
                  style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 12),
                ),
                SizedBox(
                  width: 56,
                ),
                Text(
                  "08/09/2022",
                  style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
