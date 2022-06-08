import 'package:flutter/material.dart';

class MyHomepage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Students", style: TextStyle(fontSize: 30),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("1"),
                  Text("Arya"),
                  Text("6"),
                ],
              ),
              SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("12"),
                  Text("John"),
                  Text("9"),
                ],
              ),
              SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("42"),
                  Text("Tony"),
                  Text("9"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}