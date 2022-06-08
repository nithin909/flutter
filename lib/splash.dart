

import 'package:flutter/material.dart';
import 'package:samplefproject/Myhomepage.dart';
import 'package:splashscreen/splashscreen.dart';
//import 'package:samplefproject/splashscreen.dart';

class splashscreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds:5,
      navigateAfterSeconds: Myhomepage(),
      title: const Text("Splash2",style: TextStyle(fontSize: 30),),
      image: Image.asset("assets/images/197287.jpg"),
      loaderColor: Colors.blueAccent,
      loadingText: const Text("Please wait"),
      photoSize: 40,
    );

  }

}