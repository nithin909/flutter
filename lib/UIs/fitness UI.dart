import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home1(),
  ));
}

class Home1 extends StatefulWidget{
  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(30)
      )
      ),
            floating: false,
            pinned: true,
            backgroundColor:Colors.grey,
            title: Text("My Diary"),
            actions: [
              Icon(Icons.chevron_left),
              Row(
                children: [
                  Icon(Icons.calendar_today,size: 15,),
                  Center(child: Text("June 4")),
                ],
              ),
              Icon(Icons.chevron_right)
            ],
            bottom: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30)
                  )
              ),
              //floating: false,
              //pinned: true,
              backgroundColor:Colors.grey,
              title: Text("My Diary"),
              actions: [
                Icon(Icons.chevron_left),
                Row(
                  children: [
                    Icon(Icons.calendar_today,size: 15,),
                    Center(child: Text("June 4")),
                  ],
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),
          SliverList(
               delegate: SliverChildListDelegate([
                 meridean(),
               ])
          ),
        ],
      ),
    );
  }
}

class meridean extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Mediterreanan Diet"),
    );
  }

}