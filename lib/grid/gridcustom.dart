import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(gridCustom());

}

class gridCustom extends StatelessWidget {
  List<IconData> icons = [
    Icons.person,
    Icons.refresh,
    Icons.compare_arrows,
    Icons.rectangle_rounded,
    Icons.chat,
    Icons.call,
  ];
  List names = [
    "My profile",
    "Book a cab",
    "Booking Schedule",
    "Track your cab",
    "Help & Feedback",
    "call to transport",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Menu")),
        ),
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            childrenDelegate:SliverChildBuilderDelegate((BuildContext, index) {
              return Column(
                children: [
                  Card(
                    elevation: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    child: Icon(icons[index],size: 50,color: Colors.yellowAccent,),
                  ),
                  Text(names[index]),
                ],
              );
            },
            childCount: 6),
          padding: EdgeInsets.all(50),
        )
      ),
    );
  }
}