import 'package:flutter/material.dart';
import 'package:internship_management_system/screens/LogIn.dart';
import 'package:internship_management_system/screens/dean_home.dart';
import 'package:internship_management_system/screens/student_home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentHome(),
    );
  }
}
