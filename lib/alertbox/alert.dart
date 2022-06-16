import 'dart:io';

import 'package:flutter/material.dart';

import '../appbar/Import.dart';
import 'appbar/Import.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: AppbarDesign(),
  ));
}

class AppbarDesign extends StatefulWidget{

  @override
  State<AppbarDesign> createState() => _AppbarDesignState();
}

class _AppbarDesignState extends State<AppbarDesign> {

  String profilepic = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaP_dnbT8zRQ7Ghgqw8H9b1_xpCUYEjlj7OA&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text('Custom Appbar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
          actions: [
            IconButton(onPressed:() {}, icon: Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(
                itemBuilder:(context) =>[ const PopupMenuItem(
                    child: Text("settings")
                )
                ]
            ),
          ],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.greenAccent[600],

          ), child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName:Text("Bruce"),
                accountEmail: Text("bruce@email.com"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(profilepic)
                  ),
                  onTap: () => print("Tapped"),
                ),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(image: NetworkImage("https://images.immediate.co.uk/production/volatile/sites/4/2013/04/GettyImages-640318118-c83a508.jpg?quality=90&resize=768,574"))
                ),
              ),
              ListTile(
                title: Text("Homepage"),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Imports(),
                  ));
                },
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text("Users"),
                leading: Icon(Icons.verified_user),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings),
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                title: Text("Exit"),
                leading: Icon(Icons.exit_to_app),
                onTap: () => showDialog(
                    context: context, 
                    builder: (BuildContext context) => AlertDialog(
                      title: Row(
                        children: [
                          Image.network("https://cdn-icons-png.flaticon.com/512/1828/1828527.png",height: 20,width: 20,),
                          Text("Exit")
                        ],
                      ),
                      content: Text("Do youwant to exit"),
                      actions: [
                        TextButton(
                            onPressed: ()=> Navigator.pop(context, 'Cancel'),
                            child: Text("cancel")
                        ),
                        TextButton(
                            onPressed: ()=> Navigator.pop(context),
                            child: Text('Ok')
                        )
                      ],
                    )
                )
              ),
            ],
          ),
        ),
        )
    );
  }
}