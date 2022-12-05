import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/main.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfgoRU00z3ELa7EWWrVh2taRiM9NAvuJ4EXL040B-&s'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Welcome back,",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      "Ankur",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(17, 15, 10, 5),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
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
                    "Complete your",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "now KYC now 😡",
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
                      fontSize: 20,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "   ₹0",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Text(
                    "₹18,000 - - - - - - - - - - - - - - - - - - - - - - - - - - - - -budget",
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                  Text(
                    "                          Jan month's data",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    width: 296,
                    height: 167,
                    child: Column(children: [
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                Text(
                                  "   Pending KYC",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "    You can complete your KYC ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "    on Paytm app in less",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "    than 1 min.",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(),
                        Container(
                          height: 120,
                          width: 89,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1AE13B30),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(130),
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(0)),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Image.network(
                                  "https://emojis.wiki/emoji-pics/apple/key-apple.png",
                                  height: 44,
                                  width: 44,
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 113, 0),
                        width: 148,
                        height: 39,
                        decoration: BoxDecoration(
                            color: Color(0xFFE13B30),
                            borderRadius:
                                BorderRadius.all((Radius.circular(20)))),
                        child: Center(
                          child: Text(
                            "Complete Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Categories",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                  )),
            ),
            SizedBox(
              height: 20,
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
                      height: 10,
                    ),
                    Text("Food"),
                  ]),
                  SizedBox(
                    width: 29,
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
                      height: 10,
                    ),
                    Text("Pet"),
                  ]),
                  SizedBox(
                    width: 29,
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
                      height: 10,
                    ),
                    Text("Shopping"),
                  ]),
                  SizedBox(
                    width: 29,
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
                      height: 10,
                    ),
                    Text("Entertainment"),
                  ]),
                  SizedBox(
                    width: 29,
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
                      height: 10,
                    ),
                    Text("Personal Care"),
                  ]),
                  SizedBox(
                    width: 29,
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
                      height: 10,
                    ),
                    Text("Travel"),
                  ]),
                  SizedBox(
                    width: 29,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Task",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                  )),
            ),
            SizedBox(
              height: 20,
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
                                        child: Image.network(
                                          "https://emojis.wiki/emoji-pics/apple/key-apple.png",
                                          height: 40,
                                          width: 40,
                                        )),
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    "01",
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    fontSize: 15),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
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
                                    "05",
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
                                ),
                              ),
                              Text(
                                "Create category and",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "earn ₹25",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ))
                        ]),
                  ),
                  SizedBox(
                    width: 29,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Offers & Rewards",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                  )),
            ),
            SizedBox(
              height: 10,
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
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
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
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
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
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
                                ),
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
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Blogs",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                  )),
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
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
                            ),
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
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfgoRU00z3ELa7EWWrVh2taRiM9NAvuJ4EXL040B-&s'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Ann Korkowski"),
                              SizedBox(
                                width: 56,
                              ),
                              Text("08/09/2022"),
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
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
                            ),
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
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfgoRU00z3ELa7EWWrVh2taRiM9NAvuJ4EXL040B-&s'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Ann Korkowski"),
                              SizedBox(
                                width: 56,
                              ),
                              Text("08/09/2022"),
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
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Text(
                            "Network,Which no one will",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
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
                            ),
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
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfgoRU00z3ELa7EWWrVh2taRiM9NAvuJ4EXL040B-&s'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Ann Korkowski"),
                              SizedBox(
                                width: 56,
                              ),
                              Text("08/09/2022"),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController!.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(title: Text('Home'), icon: Icon(Icons.home)),
            BottomNavyBarItem(title: Text('Item Two'), icon: Icon(Icons.apps)),
            BottomNavyBarItem(
                title: Text('Item Three'), icon: Icon(Icons.chat_bubble)),
            BottomNavyBarItem(
              title: Text('Item Four'),
              icon: Icon(Icons.settings),
            ),
          ]),
    );
  }
}
