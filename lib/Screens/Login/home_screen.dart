import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.03,
            right: size.width * 0.03),
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xffE1F1FC),Color(0xffF8F0FE)],
              center: Alignment(0.5,-0.5)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/Vector.png',
                          scale: 4.5,
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Text(
                          "Zamin muthur",
                          style: TextStyle(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.050,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient: LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                    child: Center(
                      child: Image.asset(
                        "assets/Vector (1).png",
                        scale: 3,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(
                    left: size.width * 0.030, right: size.width * 0.1),
                height: size.height * 0.18,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFB594),
                        Color(0xff6728C0),
                      ],
                    )),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 50,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      percent: 12 / 12,
                      animateFromLastPercent: true,
                      lineWidth: 10,
                      progressColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      center: Text(
                        "23\nmins",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.height * 0.020,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.06, left: size.width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street Water',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            'Remaining time',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(
                "Panchayat Notices",
                style: TextStyle(fontSize: size.height * 0.02),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: Container(
                height: size.height * 0.08,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFBF8FF)),
                child: Center(
                  child: Text(
                    "Lorem ipsum",
                    style: TextStyle(
                      fontSize: size.height * 0.017,
                      color: Color(0xffBBBBBB),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.03),
              height: size.height * 0.2,
              width: size.width * 0.9,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      height: size.height * 0.20,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xffFBF8FF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0,0.0),
                            spreadRadius: 1,
                            blurRadius: 1
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/Vector (4).png",
                            scale: 2.5,
                          ),
                          Text(
                            "Call Police",
                            style: TextStyle(fontSize: size.height * 0.015),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      height: size.height * 0.16,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1.0,0.0),
                                spreadRadius: 1,
                                blurRadius: 1
                            )
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/Vector (3).png",
                            scale: 2.5,
                          ),
                          Text(
                            "Call Ambulance",
                            style: TextStyle(fontSize: size.height * 0.015),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      height: size.height * 0.16,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0,0.0),
                              spreadRadius: 1,
                              blurRadius: 1
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/Vector (4).png",
                            scale: 2.5,
                          ),
                          Text(
                            "Call Police",
                            style: TextStyle(fontSize: size.height * 0.015),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff6324BB)],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/Vector (5).png',
                          scale: 2.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Ration Store",
                        style: TextStyle(
                            fontSize: size.height * 0.015,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff6324BB)],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/Vector (6).png',
                          scale: 2.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Bus timings",
                        style: TextStyle(
                            fontSize: size.height * 0.015,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff8949E9),
                            Color(0xff6324BB),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/Vector (7).png',
                          scale: 2.8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "About village",
                        style: TextStyle(
                            fontSize: size.height * 0.015,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
