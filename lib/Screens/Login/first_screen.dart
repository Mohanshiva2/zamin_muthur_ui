import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mobilenumber_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xffE1F1FC),Color(0xffF8F0FE)],
              center: Alignment(0.5,-0.5)
          ),
        ),
        child: Column(
          children: [
            Container(

              child: Column(
                children: [
                  Image.asset("assets/Saly-7.png",height: size.height*0.7,),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Contrary to popular belief, Lorem\n"
                      "psum is not simply random text.",style: TextStyle(
                      fontSize: size.height*0.03
                  ),),
                ],
              ),
            ),
            SizedBox(height: size.height*0.08,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileNumberPage()));
                });
              },
              child: Container(
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
                    'Next',
                    style: TextStyle(
                        fontSize: size.height*0.03,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
