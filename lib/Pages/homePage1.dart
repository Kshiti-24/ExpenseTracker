import 'package:expensetracker/Helpers/blogs.dart';
import 'package:expensetracker/Pages/homePage2.dart';
import 'package:expensetracker/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/main.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'signUpPage.dart';
import 'package:expensetracker/Helpers/category.dart';
import 'package:expensetracker/Helpers/helpers.dart';
import 'package:expensetracker/Helpers/task.dart';
import 'package:expensetracker/Helpers/rewards.dart';
import 'package:expensetracker/Helpers/bottomNav.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage1 extends StatefulWidget {
  String name;
   HomePage1({Key? key,required this.name}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}
String? email;
bool isLoogedIn=true;
class _HomePage1State extends State<HomePage1> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(64),
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png')),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Welcome back,", style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(widget.name,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16.0, fontFamily: GoogleFonts.poppins().fontFamily),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 140.0,),
                  GestureDetector(
                    onTap: (){
                    },
                      child: Icon(Icons.widgets_outlined, color: Colors.black,)),
                ]),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(17, 15, 10, 5),
          child: Column(children: [
            SizedBox(
              height: 96.0,
            ),
            Container(
              width: 330,
              height: 65,
              padding: EdgeInsets.all(5.0),
              child:
                  Text(
                    "Complete your\nnow KYC now 😡",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF525251),
                    ),
                  ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                color: Color(0xFF303F9F),
              ),
              width: MediaQuery.of(context).size.width,
              height: 511,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      "    Total Spends",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFDFE1F3),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "   ₹0",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      " ₹18,000 - - - - - - - - - - - - - - - - - - - - - - - - budget",
                      style: TextStyle(
                          color: Color(0xFFADB4E2),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 135.0,
                    ),
                    Center(
                      child: Text(
                        "Jan month's data",
                        style: TextStyle(
                          color: Color(0xFFADB4E2),
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        width: 296,
                        height: 160,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "    Pending KYC",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.poppins().fontFamily,),
                              ),
                              Text(
                                "       You can complete your KYC\n       on Paytm app in less\n       than 1 min. ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: GoogleFonts.poppins().fontFamily,),
                              ),
                            ]),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        margin: EdgeInsets.fromLTRB(32, 104, 150, 16),
                        width: 148,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xFFE13B30),
                            borderRadius:
                                BorderRadius.all((Radius.circular(84)))),
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFE13B30)),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(148, 39)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ))),
                            onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage2(name: widget.name,))),
                            child: Text(
                              "Complete Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -28,
                        right: -36,
                        child: Container(
                          height: 144,
                          width: 144,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0x1AE13B30)),
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0, 24, 45, 0),
                              child: Image.asset('assets/images/key.png')),
                        ),
                      ),
                    ]),
                  ]),
            ),
            SizedBox(height: 49,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(" Categories", style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF525251))),
            ),
            SizedBox(height: 12,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Category(img: 'assets/images/img.png', text: 'Food'),
                  SizedBox(width: 24,),
                  Category(img: 'assets/images/img1.png', text: 'Pet'),
                  SizedBox(width: 24,),
                  Category(img: 'assets/images/img2.png', text: 'Shopping'),
                  SizedBox(width: 24,),
                  Category(img: 'assets/images/img3.png', text: 'Entertainment'),
                  SizedBox(width: 24,),
                  Category(img: 'assets/images/img4.png', text: 'Personal Care'),
                  SizedBox(width: 24,),
                  Category(img: 'assets/images/img5.png', text: 'Travel'),
                  SizedBox(width: 24,),
                ],
              ),
            ),
            SizedBox(height: 36,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(" Task", style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF525251))),
            ),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Task(img: 'assets/images/key1.png', t1: '01', t2: 'Complete KYC',color: Color(0xFFF6EDD2),),
                  SizedBox(width: 8,),
                  Task(img: 'assets/images/img6.png', t1: '02', t2: 'Complete KYC',color:Color(0xFFFBE8D8),),
                  SizedBox(width: 8,),
                  Task(img: 'assets/images/img11.png', t1: '03', t2: 'Set limit to categ...',color: Color(0xFFF6EDD2),),
                  SizedBox(width: 8,),
                  Task(img: 'assets/images/img10.png', t1: '04', t2: 'Add apps to categ...',color: Color(0xFFdedef7),),
                  SizedBox(width: 8,),
                  Task(img: 'assets/images/img8.png', t1: '05', t2: 'Make one taxn',color: Color(0xFFF6EDD2),),
                  SizedBox(width: 8,),
                  Task(img: 'assets/images/img9.png', t1: '06', t2: 'Make five taxn',color: Color(0xFFe9e7d3),),
                  SizedBox(width: 8,),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(" Offers & Rewards",
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18,
                      color: Color(0xFF525251),
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Rewards(),
                  SizedBox(width: 16,),
                  Rewards(),
                  SizedBox(width: 16,),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.topLeft,
              child: Text(" Blogs", style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF525251))),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Blogs(),
                  SizedBox(width: 15,),
                  Blogs(),
                  SizedBox(width: 15,),
                  Blogs(),
                  SizedBox(width: 15,),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
              width: 328,
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 5,
                    height: 220,
                    color: Color(0xFFD9D9D9),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 313,
                    height: 192,
                    child: Text(
                      "A budget doesn’t limit your freedom; it gives you freedom",
                      style: TextStyle(fontSize: 32, color: Color(0xFFC9C9C9), fontWeight: FontWeight.w600, fontFamily: GoogleFonts.poppins().fontFamily ,),),
                  )
                ]),
            ),
            SizedBox(height: 74,),
          ]),
        ),
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 7.0,
                spreadRadius: 2.0,
              ),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavyBar(
                containerHeight: 56.0,
                selectedIndex: _selectedIndex,
                showElevation: false,
                itemCornerRadius: 50,
                backgroundColor: Colors.white,
                curve: Curves.easeIn,
                onItemSelected: (index) => setState(() {
                  _selectedIndex=index;
                }),
                mainAxisAlignment: MainAxisAlignment.center,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(Icons.home_filled),
                    title: Text(
                      'Home',
                      style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),
                    ),
                    activeColor: Color(0xFF303F9F),
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(
                      Icons.credit_card_outlined,
                      color: Color(0xFFB7B7B7),
                    ),
                    title: Text('Card', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                    activeColor: Color(0xFF303F9F),
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(
                      Icons.pie_chart_outline,
                      color: Color(0xFFB7B7B7),
                    ),
                    title: Text('Stats', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                    activeColor: Color(0xFF303F9F),
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Image.asset('assets/images/img14.png'),
                    title: Text('Rewards', style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 14),),
                    activeColor: Color(0xFF303F9F),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
