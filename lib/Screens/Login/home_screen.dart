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
        margin: EdgeInsets.only(top: 40,left: 15,right: 15),
        child: Column(
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
                          scale: 3.9,
                        ),
                        SizedBox(width: size.width*0.02,),
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
                    height: size.height * 0.045,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        gradient: LinearGradient(
                            colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                    child: Center(
                      child: Image.asset("assets/Vector (1).png",scale: 3,),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height*0.03,),
            Container(
              padding: EdgeInsets.only(left: size.width*0.1,right: size.width*0.1),
              height: size.height*0.13,
              width: size.width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xffFFB594),Color(0xff6728C0),
                  ],
                )
              ),
              child: Center(
                child: Row(
                  children: [
                    CircularPercentIndicator(
                        radius: 60,
                      circularStrokeCap:CircularStrokeCap.round,
                      animation: true,
                      percent: 12/12,
                      animateFromLastPercent: true,
                      lineWidth: 12,
                      progressColor: Colors.white,
                      backgroundColor: Colors.transparent,

                      center: Text(
                        "23\nmins",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: size.height*0.012,
                        color: Colors.white
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height*0.02,left: size.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Street Water',style: TextStyle(
                              fontSize: size.height*0.022,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: size.height*0.01,),
                          Text('Remaining time',style: TextStyle(
                              fontSize: size.height*0.022,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
