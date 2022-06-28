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
    return  const DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Card(
            color: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
            child: TabBar(
              indicator: ShapeDecoration(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                color: Colors.green,
              ),
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Chat',
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
        ),
    );
  }
}