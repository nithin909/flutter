import 'package:flutter/material.dart';

void main(){
  runApp(BasicNavbar());
}

class BasicNavbar extends StatefulWidget{
  @override
  State<BasicNavbar> createState() => _BasicNavbarState();
}

class _BasicNavbarState extends State<BasicNavbar> {
  int _selectedindex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(Icons.call, size: 150,),
    Icon(Icons.camera, size: 150,),
    Icon(Icons.chat, size: 150,),
    Icon(Icons.settings, size: 150,),
  ];
  void _onItemTapped(int index){
    setState(
        (){
          _selectedindex = index;
        }
    );
  }
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title :Text("Bottom NavBar demo")
          ),
          body: Center(
            child: _pages.elementAt(_selectedindex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon:Icon(Icons.call),
              label: 'Call',
              ),
              BottomNavigationBarItem(icon:Icon(Icons.camera),
                label: 'Camera',
              ),
              BottomNavigationBarItem(icon:Icon(Icons.chat),
                label: 'Chat',
              )
            ],
            currentIndex: _selectedindex,
            onTap: _onItemTapped,
            backgroundColor: Colors.purple,
          ),
        ),
      );
  }
}

