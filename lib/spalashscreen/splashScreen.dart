import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: Splashscreen1(),
  ));
}

class Splashscreen1 extends StatefulWidget{

  @override
  State<Splashscreen1> createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {

  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homepage1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Lottie.network("https://assets9.lottiefiles.com/temporary_files/RZFAlB.json"),
        ),
    );
  }
}

class Homepage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.lightBlue,
          child: Center(child: Text("Welcome", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
        ),
    );
  }

}