import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Mqry(),
  ));

}

class Mqry extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("With media query")
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
        width: MediaQuery.of(context).size.width*.5,
             // height: MediaQuery.of(context).size.height*.5,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*.5,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ],
        ),
    );
  }
}