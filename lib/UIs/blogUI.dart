import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: BlogHome(),
  ));
}

class BlogHome extends StatelessWidget{
  final List<Map> articles =[
    {
     "title" : "How to seem like you always have your shot Together " ,
      "author": "Johny Vino",
      "time" : "4 mins ago",
    },
    {
      "title" : "Does Dry is January Actually Improve Your Health?",
      "author": "Johny Vino",
      "time" : "4 mins ago",
    },
    {
      "title" : "You do hire a designer to make something. You hire them.",
      "author": "Johny Vino",
      "time" : "4 mins ago",
    },
    {
      "title" : "How to seem like you always have your shot Together",
      "author": "Johny Vino",
      "time" : "4 mins ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Theme(

        )
    );
  }

}
