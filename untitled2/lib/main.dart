import 'package:flutter/material.dart';
import 'package:untitled2/FirstScreen.dart';
import 'package:untitled2/SecondScreen.dart';
import 'ThirdScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Nonaktifkan banner debug
      home: FirstScreen(),
    );
  }
}
