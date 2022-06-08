import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Myfirstapp",
          style: TextStyle(fontSize: 20,color: Colors.purple),
        ),
      ),
      body:Container(
        color: Colors.black,
        // width: 400,
        // height: 50,
        child:  Center(
          child: const Text(
              "Students",
          style: TextStyle(
              fontSize: 30,color: Colors.blue,fontFamily: "Font1"),
      ),

        ),
      ),
    );
  }
}