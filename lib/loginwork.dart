import 'dart:async';

import 'package:flutter/material.dart';

import 'LoginUser.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash  extends StatefulWidget {
  @override
  State<Splash> createState() => SplashState();

}

class SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  => LoginUser())));
  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://cdn-icons-png.flaticon.com/512/6347/6347139.png",height: 80,width: 80,),
            Text("SPLASH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
          ],
        ),
      ),
    );
  }
}

