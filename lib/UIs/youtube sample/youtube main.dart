import 'package:flutter/material.dart';

void main(){
  runApp(YoutubeHome());
}

class YoutubeHome extends StatefulWidget{
  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.explore),label:"Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle),label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions_rounded),label: "Subscriptions"),
            BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library"),
          ],
        ),
      ),
    );
  }
}