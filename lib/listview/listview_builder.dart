import 'package:flutter/material.dart';

void main(){
  runApp(Clistview());
}

class Clistview extends StatefulWidget{
  @override
  State<Clistview> createState() => _ClistviewState();
}

class _ClistviewState extends State<Clistview> {
  final List<String> titles = ["Delhi", "London", "Vancouver","New York"];

  final List<String>  subtitles = [
    "India ",
    "Britain",
    "Canada",
    "USA "
  ];
  final List<String> subtitles2 = [
    "Pouplation 19 million",
    "Pouplation 8 million",
    "Pouplation 2.4 million",
    "Pouplation 8.1 million"
  ];
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtC-DNAGGQBwADmleukYt8GK0J_Waweys_iQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtC-DNAGGQBwADmleukYt8GK0J_Waweys_iQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtC-DNAGGQBwADmleukYt8GK0J_Waweys_iQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtC-DNAGGQBwADmleukYt8GK0J_Waweys_iQ&usqp=CAU",
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
          itemCount: titles.length,
            itemBuilder: (BuildContext, index){
              return Card(
                child: ListTile(
                  tileColor: Colors.green,
                    title: Text(titles[index]),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(subtitles[index]),
                        Text(subtitles2[index]),
                      ],
                    ),
                    leading: Image(image: NetworkImage(images[index],scale:1.1)),
                ),
              );
            }),
      ),
    );
  }
}