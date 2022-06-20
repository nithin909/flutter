import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(gridCustom());

}

class gridCustom extends StatelessWidget {
  List<IconData> icons = [
    Icons.person,
    Icons.cached,
    Icons.person,
    Icons.cached,
    Icons.person,
    Icons.cached,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Grid"),
        ),
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            childrenDelegate:SliverChildBuilderDelegate((BuildContext, index) {
              return Column(
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                    child: Icon(icons[index],size: 50,color: Colors.yellowAccent,),
                  )
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