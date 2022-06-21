import 'package:flutter/material.dart';

void main(){
  runApp(Tabbar2(

  ));
}

class Tabbar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: CustTab(),
    );
  }
}

class CustTab extends StatefulWidget{
  @override
  State<CustTab> createState() => _CustTabState();
}

class _CustTabState extends State<CustTab> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            title: Center(child: Text("Custom Tabbar")),
            bottom: TabBar(
              indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                color: Colors.white70,
              ),
              labelColor: Colors.black,
              tabs: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Tab(
                    text: 'Chat',
                  ),
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Call',
                ),
                Tab(
                  text: 'Settings',
                ),
              ],

            ),
          ),
        )
    );
  }
}