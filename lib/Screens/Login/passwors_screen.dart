import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zamin_muthur_ui/Screens/Login/street_search_screen.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xffE1F1FC), Color(0xffF8F0FE)],
              center: Alignment(0.5, -0.5)),
        ),
        padding: EdgeInsets.all(13),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter',
                      style: TextStyle(
                          fontSize: height * 0.05, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'One time passsword',
                      style: TextStyle(
                          fontSize: height * 0.045,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff7434CF)),
                    ),
                  ],
                ),
              ),
              top: height * 0.130,
              left: width * 0.039,
              right: width * 0.039,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(
                  top: height * 0.4,
                ),
                width: width * 0.8,
                height: height * 0.08,
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
                        hintText: 'One time Password',
                        filled: true,
                        fillColor: Color(0xffFBF8FF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              left: width * 0.024,
              right: width * 0.024,
              top: -height * 0.0120,
            ),
            Positioned(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/Saly-1.png",
                      scale: 3,
                    ),
                  ],
                ),
              ),
              top: height * 0.55,
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StreetPage()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.2),
                  height: height * 0.07,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          colors: [Color(0xff8949E9), Color(0xff6324BB)])),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: height * 0.03, color: Colors.white),
                    ),
                  ),
                ),
              ),
              left: width * 0.2,
              right: width * 0.2,
              top: height * 0.33,
            ),
          ],
        ),
      ),
    );
  }
}
