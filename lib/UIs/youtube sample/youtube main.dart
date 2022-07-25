import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(YoutubeHome());
}

class YoutubeHome extends StatefulWidget{
  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {

int selectedindex =0;
final navtabs = [
  HomePage(),
  explore(),
  //Addpage(),
  //Subscription(),
  //Library(),
];

void ontapped(int index){
  setState(
      (){
        selectedindex = index;
      }
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Center(child: FaIcon(FontAwesomeIcons.youtube,color: Colors.red,)),
          title: Text("Youtube",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.cast),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg"),
              ),
            ),
          ],
        ),

        body:navtabs.elementAt(selectedindex),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.white,
          onTap: ontapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),activeIcon: Icon(Icons.home),label: "Home",),
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

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.blue,
    );
  }
}

class explore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Hello"),
        ),
        ListTile(
          title: Text("How"),
        ),
        ListTile(
          title: Text("Are"),
        ),
        ListTile(
          title: Text("You"),
        ),
      ],
    );
  }

}