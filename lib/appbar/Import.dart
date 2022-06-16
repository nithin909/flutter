import 'package:flutter/material.dart';

import '../AppbarDesign.dart';

class Imports extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Imports"),
        ),
        body: ListTile(
          title: Text("Homepage"),
          leading: Icon(Icons.home),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => AppbarDesign(),
            ));
          },
        ),
      ),
    );
  }
  
}