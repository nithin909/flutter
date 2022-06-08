import 'dart:async';
import 'package:flutter/material.dart';
import 'package:samplefproject/splash.dart';
import 'studenttable.dart';

void main() {
  runApp(Splashscreen());
}

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => splashscreen2();
}

class splashscreen2 extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Studenttable())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/student-icon.png"),
              const Text(
                "Student Details",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
