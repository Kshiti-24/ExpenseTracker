import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/main.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spline_chart/spline_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:expensetracker/Helpers/bottomNav.dart';
import 'package:expensetracker/Helpers/blogs.dart';
import 'package:expensetracker/Helpers/category.dart';
import 'package:expensetracker/Helpers/rewards.dart';
import 'package:expensetracker/Helpers/task.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage2 extends StatefulWidget {
  String name;
   HomePage2({Key? key,required this.name }) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}


class _HomePage2State extends State<HomePage2> {
  int _selectedIndex = 0;
  final panelController=PanelController();
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(0, 5),
      ChartData(5, 20),
      ChartData(15, 30),
      ChartData(20, 25),
      ChartData(25, 15),
      ChartData(35, 50),
      ChartData(20, 25),
    ];
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
                      Text(
                        "Welcome back,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                       widget.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            fontFamily: GoogleFonts.poppins().fontFamily,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 140.0,
                ),
                Icon(
                  Icons.widgets_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(17, 15, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 96.0,
            ),
                  Text(
                    "Your doing\ngreat keep it up.🤞",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xFF303F9F),
              ),
              width: MediaQuery.of(context).size.width,
              height: 530,
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
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "   ₹12,000",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    " ₹18,000 - - - - - - - - - - - - - - - - - - - - - - - -budget",
                    style: TextStyle(
                        color: Color(0xFFADB4E2),
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 12),
                  ),
                  Container(
                    height: 160,
                    width: 328,
                    child: SfCartesianChart(
                      backgroundColor: Color(0xFF303F9F),
                      borderColor: Color(0xFF303F9F),
                      series: <ChartSeries>[
                        // Renders spline chart
                        SplineSeries<ChartData, int>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y)
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      "Jan month's data",
                      style: TextStyle(
                        color: Color(0xFF8D96D6),
                        fontSize: 12,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: 9.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF303F9F),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    width: 296,
                    height: 183,
                    child: Column(children: [
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 144,
                              height: 87,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset(
                                            "assets/images/img12.png"),
                                      ),
                                      Text(
                                        "  Projected Saving",
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xFF525251),
                                          fontFamily: GoogleFonts.poppins().fontFamily,
                                          fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹2,000",
                                    style: TextStyle(
                                      fontSize: 18,
                                        fontFamily: GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              width: 144,
                              height: 87,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Image.asset(
                                            "assets/images/img13.png"),
                                      ),
                                      Text(
                                        "  Highest Spent",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF525251),
                                            fontFamily: GoogleFonts.poppins().fontFamily,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹2,000",
                                    style: TextStyle(
                                      fontSize: 18,
                                        fontFamily: GoogleFonts.roboto().fontFamily,
                                      fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 136,
                          height: 183,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card balance",
                                style: TextStyle(
                                  fontSize: 14,
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "₹1,500",
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600,
                                        fontFamily: GoogleFonts.roboto().fontFamily
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2AE13B30),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Low bal",
                                        style: TextStyle(
                                          color: Color(0xFFE13B30),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                            fontFamily: GoogleFonts.poppins().fontFamily
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () =>
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                      context: context,
                                      builder: (context) => buildSheet(context),
                                  ),
                                child: Container(
                                  width: 78,
                                  height: 80,
                                  margin: EdgeInsets.fromLTRB(36, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF303F9F),
                                  ),
                                  child: Center(
                                      child: Text(
                                    " Add",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ]),
                  ),
                ],
              ),
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
            SizedBox(
              height: 36,
            ),
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
                  Container(
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
                                            color: Color(0xFFD6F4DE),
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
                                            "assets/images/img6.png")),
                                  ],
                                ),
                                SizedBox(width: 12,),
                                Container(
                                  width: 41,
                                  height: 48,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                                  child: Image.asset("assets/images/img7.png"),
                                )
                              ]),
                          Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Complete KYC",
                                    style: TextStyle(
                                        color: Color(0xFF0C0C0C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        fontFamily: GoogleFonts.poppins().fontFamily),
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
                  ),
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
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(" Offers & Rewards", style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF525251))),
            ),
            SizedBox(
              height: 8,
            ),
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
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 35,
            ),
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
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 313,
                    height: 192,
                    child: Text(
                      "A budget doesn’t limit your freedom; it gives you freedom",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xFFC9C9C9),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 74,
            ),
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
bool isClicked=true;
Color? color1;
Color? color2;
Widget buildSheet(BuildContext context) => Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    SizedBox(height: 24,),
    Container(
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEEEEEE))
      ),
      child: Row(
        children: [
          SizedBox(width: 16,),
          GestureDetector(
            onTap:(){ Navigator.pop(context);},
              child: Icon(Icons.arrow_back_outlined)),
          SizedBox(width: 10,),
          Text("Adding Transaction",style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    ),
    SizedBox(height: 24,),
    Container(
      height: 452,
      width: 329,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Enter Spent amount",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          SizedBox(height: 8,),
          Text("Enter the amount that you have spend without using zero balance. ",style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF757575),
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          SizedBox(height: 18,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Amount",
              enabledBorder:  OutlineInputBorder(
                borderRadius:  BorderRadius.circular(16.0),
                borderSide:  BorderSide( width: 1, color: Color(0xFF303F9F)),
              ),
              focusedBorder:  OutlineInputBorder(
                borderRadius:  BorderRadius.circular(16.0),
                borderSide:  BorderSide( width: 1, color: Color(0xFF303F9F)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text("Enter Date",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          SizedBox(height: 8,),
          TextFormField(
            decoration: InputDecoration(
              enabledBorder:  OutlineInputBorder(
                borderRadius:  BorderRadius.circular(16.0),
                borderSide:  BorderSide( width: 1, color: Color(0xFFEEEEEE)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text("Mode of payment",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          SizedBox(height: 8,),
          Row(
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(32, 104, 150, 16),
                width: 101,
                height: 32,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF303F9F)),
                    borderRadius:
                    BorderRadius.all((Radius.circular(12)))),
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                           Colors.white),
                        fixedSize: MaterialStateProperty.all(
                            const Size(101, 32)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ))),
                    onPressed: () {
                      isClicked=!isClicked;
                    },
                    child: Text(
                      "UPI",
                      style: TextStyle(
                        color: Color(0xFF303F9F),
                        fontFamily: GoogleFonts.poppins().fontFamily
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12,),
              Container(
                // margin: EdgeInsets.fromLTRB(32, 104, 150, 16),
                width: 101,
                height: 32,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF303F9F)),
                    borderRadius:
                    BorderRadius.all((Radius.circular(12)))),
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.white),
                        fixedSize: MaterialStateProperty.all(
                            const Size(101, 32)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ))),

                    onPressed: () {
                      isClicked = ! isClicked;
                    },
                    child: Text(
                      "Card",
                      style: TextStyle(
                        color: Color(0xFF303F9F),
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12,),
              Container(
                // margin: EdgeInsets.fromLTRB(32, 104, 150, 16),
                width: 101,
                height: 32,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF303F9F)),
                    borderRadius:
                    BorderRadius.all((Radius.circular(12)))),
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            isClicked ? Colors.white : Color(0xFF303F9F)),
                        fixedSize: MaterialStateProperty.all(
                            const Size(101, 32)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ))),
                    onPressed: () {

                    },
                    child: Text(
                      "Cash",
                      style: TextStyle(
                        color: Color(0xFF303F9F),
                        fontFamily: GoogleFonts.poppins().fontFamily
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("Quick note",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: GoogleFonts.poppins().fontFamily
          ),),
          SizedBox(height: 8,),
          TextFormField(

            decoration: InputDecoration(
              labelText: "Quick note",
              enabledBorder:  OutlineInputBorder(
                borderRadius:  BorderRadius.circular(16.0),
                borderSide:  BorderSide( width: 1, color: Color(0xFFEEEEEE)),
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 22,),
    Container(
      // margin: EdgeInsets.fromLTRB(32, 104, 150, 16),
      width: 328,
      height: 48,
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Color(0xFF303F9F)),
              fixedSize: MaterialStateProperty.all(
                  const Size(328, 48)),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ))),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    ),
    SizedBox(height: 16,),
  ],

);



class ChartData {
  ChartData(this.x, this.y);

  final int x;
  final double? y;
}
