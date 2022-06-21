import 'package:flutter/material.dart';

void main(){
  runApp(Clistview());
}

class Clistview extends StatelessWidget{
  final titles = ["Delhi", "London", "Vancouver","New York"];
  final subtitles = [
    "India Pouplation 19 million",
    "Britain Population 8 million",
    "Canada population 2.4 million"
    "USA population 8.1 million"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cities around world",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
        body: ListView.builder(
          itemCount: titles.length -1,
            itemBuilder: (BuildContext, index){
              return Card(
                child: ListTile(

                  tileColor: Colors.green,
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    //leading: Image(image: images[index]),
                ),
              );
            }),
      ),
    );
  }
}