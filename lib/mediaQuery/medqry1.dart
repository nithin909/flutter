import 'package:flutter/material.dart';

void main(){
  runApp(Mqry());

}

class Mqry extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Without media query")
        ),
        body: Row(
          children: [
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.blue,
             ),
            ),
          ],
        ),
      ),
    );
  }
}