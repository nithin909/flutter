import 'package:flutter/material.dart';

class RouteHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("HomePage"),
      ),
      body: Center(
        child: TextButton(
            child: Text("Go to Settings"),
            onPressed: () {Navigator.of(context).pushNamed('RouteSettings');}
        ),
      ),
    );
  }

}