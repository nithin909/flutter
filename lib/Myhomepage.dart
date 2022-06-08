import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text(
          "Myfirstapp",
          style: TextStyle(fontSize: 20,color: Colors.purple),
        ),
      ),
      body:Center(
        child: Container(
          color: Colors.black45,
          width: 200,
          height: 200,
          child:  const Text(
              "Hello World",
          style: TextStyle(
              fontSize: 55,color: Colors.blue),
        ),
        ),
      ),
    );
  }
}