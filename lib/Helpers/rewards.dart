import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Color(0xFFEEEEEE),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 304,
        height: 345,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEEEEEE)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: 304,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius:
                BorderRadius.all(Radius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                "A rewarding celebration",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Win rewards from Citizen.peter\nengland,and More",
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 14,
                  )),
            ),
            SizedBox(
              height: 13,
            ),
            Center(
              child: Container(
                height: 40,
                width: 272,
                decoration: BoxDecoration(
                  border: Border.all(
                        color: Color(0xFFADB4E2),),
                  borderRadius:   BorderRadius.all(Radius.circular(15))
                ),
                child: ElevatedButton(
                  onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      fixedSize: MaterialStateProperty.all(
                          const Size(272, 40)),
                    ),
                  child: Center(
                    child: Text(
                      "Explore rewards  +",
                      style: TextStyle(
                          color: Color(0xFF303F9F),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                  ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
