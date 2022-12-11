import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/main.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:spline_chart/spline_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}


class _HomePage2State extends State<HomePage2> {
  int _currentIndex = 0;
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
                          fontSize: 15.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        "Ankur",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: 'Poppins'),
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
          children: [
            SizedBox(
              height: 96.0,
            ),
            Container(
              width: 330,
              height: 58,
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your doing",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "great keep it up.🤞",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                    ),
                  )
                ],
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
              width: 330,
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
                      fontFamily: 'Poppins',
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
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    "₹18,000 - - - - - - - - - - - - - - - - - - - - - - - - - - - - -budget",
                    style: TextStyle(
                        color: Color(0xFFADB4E2),
                        fontFamily: 'Poppins',
                        fontSize: 15),
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
                  Text(
                    "                                        Jan month's data",
                    style: TextStyle(
                      color: Color(0xFF8D96D6),
                      fontSize: 12,
                      fontFamily: 'Poppins'
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
                                            "assets/images/img1.png"),
                                      ),
                                      Text(
                                        "  Projected Saving",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF525251),
                                          fontFamily: 'Poppins',
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
                                      fontSize: 21,
                                        fontFamily: 'Poppins'
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
                                            "assets/images/img1.png"),
                                      ),
                                      Text(
                                        "  Highest Spent",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF525251),
                                            fontFamily: 'Poppins'
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
                                      fontSize: 21,
                                        fontFamily: 'Poppins'
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
                                  fontSize: 16,
                                    fontFamily: 'Poppins'
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
                                      fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins'
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
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                            fontFamily: 'Poppins'
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
                                    "Add",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
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

            SizedBox(
              height: 49,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Categories",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Food",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img1.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Pet",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img2.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Shopping",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img3.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Entertainment",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img4.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Personal Care",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                  Column(children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEEEEEE)),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/img5.png'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Travel",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Task",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                                            color: Color(0xFFF6EDD2),
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
                                            "assets/images/key1.png")),
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
                                    "01",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFF6EDD2),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
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
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                SizedBox(
                                  width: 12,
                                ),
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
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                            color: Color(0xFFFBE8D8),
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
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 41,
                                  height: 48,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                                  child: Text(
                                    "02",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFFBE8D8),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
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
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                            color: Color(0xFFF6EDD2),
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
                                      margin: EdgeInsets.fromLTRB(23, 23, 0, 0),
                                      child: Text(
                                        "🤑",
                                        style: TextStyle(
                                          fontSize: 27,
                                        ),
                                      ),
                                    )
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
                                    "03",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFF6EDD2),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                )
                              ]),
                          Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Set limit to categ...",
                                    style: TextStyle(
                                        color: Color(0xFF0C0C0C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                            color: Color(0xFFdedef7),
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
                                      margin: EdgeInsets.fromLTRB(23, 23, 0, 0),
                                      child: Text(
                                        "👨‍💻",
                                        style: TextStyle(
                                          fontSize: 27,
                                        ),
                                      ),
                                    )
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
                                    "04",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFdedef7),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                )
                              ]),
                          Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Add apps to categ...",
                                    style: TextStyle(
                                        color: Color(0xFF0C0C0C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                          height: 92,
                                          width: 85,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF6EDD2),
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
                                        EdgeInsets.fromLTRB(18, 16, 0, 0),
                                        child: Image.asset(
                                            "assets/images/img8.png")),
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
                                    "05",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFF6EDD2),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                )
                              ]),
                          Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Make one taxn",
                                    style: TextStyle(
                                        color: Color(0xFF0C0C0C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
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
                                          height: 92,
                                          width: 85,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFe9e7d3),
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
                                        EdgeInsets.fromLTRB(18, 16, 0, 0),
                                        child: Image.asset(
                                            "assets/images/img9.png")),
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
                                    "06",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFFe9e7d3),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                )
                              ]),
                          Center(
                              child: Column(
                                children: [
                                  Text(
                                    "Make 5 taxn in each categ.",
                                    style: TextStyle(
                                        color: Color(0xFF0C0C0C),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "Create category and",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    "earn ₹25",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Poppins'),
                                  ),
                                ],
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Offers & Rewards",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
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
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              "A rewarding celebration",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
                            child: Text("Win rewards from Citizen.peter",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 125, 0),
                            child: Text("england,and More",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                )),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 40,
                            width: 272,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFADB4E2),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Center(
                              child: Text(
                                "Explore rewards  +",
                                style: TextStyle(
                                    color: Color(0xFF303F9F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Card(
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
                            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              "A rewarding celebration",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 29, 0),
                            child: Text("Win rewards from Citizen.peter",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 125, 0),
                            child: Text("england,and More",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                )),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 40,
                            width: 272,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFADB4E2),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Center(
                              child: Text(
                                "Explore rewards  +",
                                style: TextStyle(
                                    color: Color(0xFF303F9F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Blogs",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
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
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 47, 0),
                          child: Text(
                            "4 methods of calculating",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 195, 0),
                          child: Text(
                            "tell you",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
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
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                width: 56,
                              ),
                              Text(
                                "08/09/2022",
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
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
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 47, 0),
                          child: Text(
                            "4 methods of calculating",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 195, 0),
                          child: Text(
                            "tell you",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
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
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                width: 56,
                              ),
                              Text(
                                "08/09/2022",
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
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
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 47, 0),
                          child: Text(
                            "4 methods of calculating",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 195, 0),
                          child: Text(
                            "tell you",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
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
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                width: 56,
                              ),
                              Text(
                                "08/09/2022",
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        fontSize: 35,
                        color: Color(0xFFC9C9C9),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
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
                selectedIndex: 0,
                showElevation: false,
                itemCornerRadius: 50,
                backgroundColor: Colors.white,
                curve: Curves.easeIn,
                onItemSelected: (index) => setState(() {
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => HomePage2()));
                }),
                mainAxisAlignment: MainAxisAlignment.center,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(Icons.home_filled),
                    title: Text(
                      'Home',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
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
                    title: Text('Home'),
                    activeColor: Colors.red,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(
                      Icons.pie_chart_outline,
                      color: Color(0xFFB7B7B7),
                    ),
                    title: Text('Home'),
                    activeColor: Colors.red,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    inactiveColor: Colors.black,
                    icon: Icon(Icons.apps),
                    title: Text('Home'),
                    activeColor: Colors.red,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
bool isClicked=true;
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
          Icon(Icons.arrow_back_outlined),
          SizedBox(width: 10,),
          Text("Adding Transaction",style: TextStyle(
            fontFamily: 'Poppins',
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
            fontFamily: 'Poppins'
          ),),
          SizedBox(height: 8,),
          Text("Enter the amount that you have spend without using zero balance. ",style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF757575),
              fontFamily: 'Poppins'
          ),),
          SizedBox(height: 24,),
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
          SizedBox(height: 24,),
          Text("Enter Date",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Poppins'
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
          SizedBox(height: 24,),
          Text("Mode of payment",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: 'Poppins'
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
                      isClicked = ! isClicked;
                    },
                    child: Text(
                      "UPI",
                      style: TextStyle(
                        color: Color(0xFF303F9F),
                        fontFamily: "Poppins",
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
                        fontFamily: "Poppins",
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
                      "Cash",
                      style: TextStyle(
                        color: Color(0xFF303F9F),
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Text("Quick note",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Poppins'
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
            isClicked = ! isClicked;
          },
          child: Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
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
