import 'package:flutter/material.dart';
import 'package:samplefproject/TabBar/Tabbar1.dart';

import 'RouteHomepage.dart';
import 'RouteSettings.dart';

void main(){
  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      'Homepage': (BuildContext ctx) => RouteHomepage(),
      'RouteSettings' : (BuildContext ctx) => RouteSettings1(),
    },
  ));
}


class Mainpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage")
      ),
      body: Center(
        child: TextButton(
          child: Text("Go to HomePage"),
          onPressed: () {Navigator.of(context).pushNamed("Homepage");}
        ),
      ),
    );
  }

}