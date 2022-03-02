import 'dart:async';

import 'package:flutter/cupertino.dart';
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

  @override
  final page = List.generate(
    3,
    (index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child:
      Center(
        child:
        Container(
          height: 80,
          width: 500,
          decoration: BoxDecoration(
              color: Color(0xffFBF8FF),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
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
  );


  double precent = 100;

  late Timer timer;

  startTimer(){
    timer = Timer.periodic(Duration(seconds: 5), (_) {
      setState(() {
        precent -= 1;
        if(precent == 0){
          timer.cancel();
          precent = 0.0;
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

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
              colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
              center: Alignment(0.5, -0.5)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      radius: 60,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      percent: 70/100,//precent/100,
                      animateFromLastPercent: true,
                      lineWidth: 10,
                      progressColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      center: Text(
                        "23\nMins",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.height * 0.016,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.06, left: size.width * 0.03),
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
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Panchayat Notices",
                style: TextStyle(
                    fontSize: size.height * 0.03, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Center(
              child: Container(
                height: size.height * 0.09,
                width: size.width * 0.9,
                child: PageView(
                  controller: controller,
                  children: [
                    Container(
                      height: 100,
                      width: 500,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child:
                      Center(
                        child:
                        Container(
                          height: 80,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color(0xffFBF8FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
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
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child:
                      Center(
                        child:
                        Container(
                          height: 80,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color(0xffFBF8FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
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
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child:
                      Center(
                        child:
                        Container(
                          height: 80,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Color(0xffFBF8FF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
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
                )
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: page.length,
                effect: ExpandingDotsEffect(
                    dotHeight: size.height * 0.005,
                    dotWidth: size.width * 0.02,
                    activeDotColor: Colors.grey.shade300,
                    dotColor: Colors.grey.shade300),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(30),

                    height: size.height * 0.20,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 0.0),
                            spreadRadius: 1,
                            blurRadius: 1)
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
                          color: Color(0xff6324BB),
                        ),
                        Text(
                          "Ration Store",
                          style: TextStyle(fontSize: size.height * 0.020,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    height: size.height * 0.16,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
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
                          color: Color(0xff6324BB),
                        ),
                        Text(
                          "Bus Timing",
                          style: TextStyle(fontSize: size.height * 0.020,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height*0.02,),
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
                          'assets/Vector (4).png',
                          scale: 2.8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Call police",
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
                          'assets/Vector (3).png',
                          scale: 2.8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Call Ambulance",
                        style: TextStyle(
                          fontSize: size.height * 0.015,
                          fontWeight: FontWeight.w600,
                        ),
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
