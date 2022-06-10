import 'package:flutter/material.dart';

void main() {
  runApp(CityList());
}

class CityList extends StatelessWidget {
  final mylist =["Delhi", "London","Vancouver","New Yprk"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cities Around World",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index){
              return const ListTile(
                title: Text("Delhi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),

              );
            }
        ),
      ),
    );
  }
}
