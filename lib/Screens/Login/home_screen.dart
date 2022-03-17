import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(keepPage: true);

  double percent = 100;

  late Timer timer;

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (mounted) {
        setState(() {
          percent -= 1;
          if (percent == 0) {
            timer.cancel();
            percent = 0.0;
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: height * 0.03, left: width * 0.03, right: width * 0.03),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
              center: Alignment(0.5, -0.5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                      // print("hey I am Working Location");
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        scale: 4.5,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        "Zamin muthur",
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    // print("hey I am Working (account)");
                  },
                  child: Container(
                    height: height * 0.050,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient:  const LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                    child: Center(
                      child: Image.asset(
                        "assets/Vector (1).png",
                        scale: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Container(
                padding:
                    EdgeInsets.only(left: width * 0.030, right: width * 0.1),
                height: height * 0.18,
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFFB594),
                        Color(0xff6728C0),
                      ],
                    ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      radius: 60,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      percent: 70 / 100,
                      //percent/100,
                      animateFromLastPercent: true,
                      lineWidth: 10,
                      progressColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      center: Text(
                        "23\nMins",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: height * 0.016,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.06, left: width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street Water',
                            style: TextStyle(
                                fontSize: height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Remaining time',
                            style: TextStyle(
                                fontSize: height * 0.022,
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
              height: height * 0.02,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: Text(
                "Panchayat Notices",
                style: TextStyle(
                    fontSize: height * 0.03, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: SizedBox(
                  height: height * 0.09,
                  width: width * 0.9,
                  child: PageView(
                    controller: controller,
                    children: [
                      Container(
                        height: 100,
                        width: 500,
                        margin:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 500,
                            decoration: BoxDecoration(
                                color: const Color(0xffFBF8FF),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "Lorem ipsum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xffBBBBBB),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 500,
                        margin:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 500,
                            decoration: BoxDecoration(
                                color: const Color(0xffFBF8FF),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "Lorem ipsum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xffBBBBBB),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 500,
                        margin:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 500,
                            decoration: BoxDecoration(
                                color: const Color(0xffFBF8FF),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "Lorem ipsum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xffBBBBBB),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotHeight: height * 0.005,
                    dotWidth: width * 0.02,
                    activeDotColor: Colors.grey.shade300,
                    dotColor: Colors.grey.shade300),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              height: height * 0.2,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      // print("hey I am Working (Ration Store");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      height: height * 0.20,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0, 0.0),
                              spreadRadius: 1,
                              blurRadius: 1),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/Vector (5).png",
                            scale: 2.5,
                            color: const Color(0xff6324BB),
                          ),
                          Text(
                            "Ration Store",
                            style: TextStyle(
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      // print("hey I am Working (Bus Timing)");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      height: height * 0.16,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1.0, 0.0),
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/Vector (6).png",
                            scale: 2.0,
                            color: const Color(0xff6324BB),
                          ),
                          Text(
                            "Bus Timing",
                            style: TextStyle(
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        // print("hey I am Working (Police)");
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)],
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/Vector (4).png',
                            scale: 2.8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Call police",
                        style: TextStyle(
                            fontSize: height * 0.015,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        // print("hey I am Working (Ambulance)");
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)],
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/Vector (3).png',
                            scale: 2.8,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Call Ambulance",
                        style: TextStyle(
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        // print("hey I am Working (Village)");
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
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
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "About village",
                        style: TextStyle(
                            fontSize: height * 0.015,
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
