import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabView",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Homepage(),
    );
  }

}

class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Tabbar"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                  text: "Account",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Icon(Icons.home_filled),
              ),
              Center(
                child: Icon(Icons.account_box_outlined),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXZ3GpWFt4bXcOqKPIQnHQQsyfUWu-M2vaWw&usqp=CAU"),
              ),
            ],
          ),
        )
    );
  }
}