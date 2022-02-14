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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffE1F1FC),Color(0xffFFF2DF)],
              begin: Alignment.topRight,
              end: Alignment.bottomRight
          ),
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
                          fontSize: size.height * 0.05,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'One time passsword',
                      style: TextStyle(
                          fontSize: size.height * 0.045,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff7434CF)),
                    ),
                  ],
                ),
              ),
              top: size.height * 0.188,
              left: size.width*0.039,
              right: size.width*0.039,
            ),


            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: size.height*0.4,),
                width: size.width * 0.8,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2.0,4.0),
                          spreadRadius: 3,
                          blurRadius: 9
                      )
                    ]
                ),
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
              left: size.width*0.024,
              right: size.width*0.024,
              top: -size.height*0.0120,
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
              top: size.height*0.55,

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
                  margin: EdgeInsets.only(top: size.height * 0.2),
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
              left: size.width*0.2,
              right: size.width*0.2,
              top: size.height*0.33,


            ),
          ],
        ),
      ),
    );
  }
}
