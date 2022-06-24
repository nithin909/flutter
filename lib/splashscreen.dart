import 'dart:async';

import 'package:flutter/material.dart';

import 'Myhomepage.dart';

void main(){
  runApp(MaterialApp(
    home: SplashScreen(),
   )
  );
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenstate();

}


class SplashScreenstate extends State {
  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 5),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Myhomepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/197287.jpg",height: 200,width: 250),
              //Image.network("https://cdn-icons.flaticon.com/png/512/4494/premium/4494688.png?token=exp=1654583905~hmac=7089491319fca8a141e59ef4095364ec",width: 150,height: 150,),
              Text("MY APP",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );

  }


}