import 'package:flutter/material.dart';
import 'package:samplefproject/splashscreen.dart';

import 'MyHomepage2.dart';
import 'Myhomepage.dart';
import 'splash.dart';
void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomepage2(),
    );
  }
}

