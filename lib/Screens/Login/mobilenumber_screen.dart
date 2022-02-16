import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zamin_muthur_ui/Screens/Login/passwors_screen.dart';

class MobileNumberPage extends StatefulWidget {
  const MobileNumberPage({Key? key}) : super(key: key);

  @override
  _MobileNumberPageState createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF2DF),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Color(0xffE1F1FC),
            Color(0xffF8F0FE),
          ], center: Alignment(0.5, -0.5), radius: 0.9),
        ),
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      // gradient: LinearGradient(
                      //     colors: [Color(0xffE1F1FC),Color(0xffE1F1FC)],
                      //     begin: Alignment.center,
                      //     end: Alignment.center,
                      //   tileMode: TileMode.mirror
                      // ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0xffE1F1FC),
                      //     blurRadius: 100,
                      //     offset: Offset(1.0,-1.0),
                      //     spreadRadius: 5,
                      //   )
                      // ]
                    ),
                    // height: size.height * 0.4,
                    // width: size.width * 0.8,
                    child: Image.asset(
                      "assets/Saly-2.png",
                      scale: 2.5,
                    ),
                  ),
                ],
              ),
              left: size.width * 0.300,
              // right: -size.width * 0.9,
              top: size.height * 0.01,
            ),
            Positioned(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login using',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      'Mobile number',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7434CF)),
                    ),
                  ],
                ),
              ),
              top: size.height * 0.25,
            ),
            Positioned(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2.0, 4.0),
                          spreadRadius: 3,
                          blurRadius: 9)
                    ]),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: 'Mobile number',
                          filled: true,
                          fillColor: Color(0xffFBF8FF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ],
                ),
              ),
              top: size.height * 0.45,
              right: size.width * 0.024,
              left: size.width * 0.024,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordPage()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.08,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: size.height * 0.03, color: Colors.white),
                    ),
                  ),
                ),
              ),
              left: size.width * 0.20,
              right: size.width * 0.20,
              top: size.height * 0.30,
            ),
          ],
        ),
      ),
    );
  }
}
