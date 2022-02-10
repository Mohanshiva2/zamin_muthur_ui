import 'package:flutter/material.dart';
import 'package:zamin_muthur_ui/Screens/Login/mobilenumber_screen.dart';

import 'Screens/Login/first_screen.dart';
import 'Screens/Login/passwors_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

