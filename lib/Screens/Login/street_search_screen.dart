import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';


class StreetPage extends StatefulWidget {
  const StreetPage({Key? key}) : super(key: key);

  @override
  _StreetPageState createState() => _StreetPageState();
}

class _StreetPageState extends State<StreetPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xffF3F0FF),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Stack(
                children: [
                  Container(
                    // height: size.height * 0.4,
                    // width: size.width * 0.8,
                    child: Image.asset(
                      "assets/Vector.png",scale: 2.7,
                      height: size.height * 0.7,
                    ),
                  ),
                ],
              ),
              left: size.width * 0.4,
              right: -size.width*0.2,
              top: -size.height*0.10,
            ),
            Positioned(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Search your',style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400
                    ),
                    ),
                    SizedBox(height: size.height*0.02 ,),
                    Text('Street name',style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7434CF)
                    ),
                    ),
                  ],
                ),
              ),
              top: size.height*0.20,
              left: size.width*0.047,
              right: size.width*0.047,
            ),
            Positioned(
              child: Container(
                width: size.width*0.8,
                height: size.height*0.08,
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
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(25),
                          hintText: 'Search...',
                          filled: true,
                          fillColor: Color(0xffFBF8FF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              top: size.height*0.380,
              left: size.width*0.024,
              right: size.width*0.024,
            ),

            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: size.width*0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/Saly-15.png",scale: 3.5),
                  ],
                ),
              ),
              top: size.height*0.58,
              right: -size.width*0.02,
            ),
            Positioned(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: size.height*0.196),
                  height: size.height*0.08,
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          colors: [Color(0xff8949E9
                          ),Color(0xff6324BB)]
                      )
                  ),
                  child: Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(
                          fontSize: size.height*0.03,
                          color: Colors.white
                      ),
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
