import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Import.dart';

void main(){
  runApp(gmailDrawer());
}

class gmailDrawer extends StatefulWidget {  @override
State<gmailDrawer> createState() => _gmailDrawerState();
}

class _gmailDrawerState extends State<gmailDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gmail Drawer"),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Bruce"),
                  accountEmail: Text("Bruce@email.com"),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaP_dnbT8zRQ7Ghgqw8H9b1_xpCUYEjlj7OA&usqp=CAU"),
                    ),
                    onTap: (){
                      Fluttertoast.showToast(msg: 'Your profile picture');
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://images.immediate.co.uk/production/volatile/sites/4/2013/04/GettyImages-640318118-c83a508.jpg?quality=90&resize=768,574",)
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: const Text("Import"),
                  leading: Icon(Icons.import_contacts),
                  onTap: (){
                   // Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Imports(),
                    ));
                  },
                ),
                ListTile(
                  title: Text("Gallery"),
                  leading: Icon(Icons.image),
                ),ListTile(
                  title: Text("Slideshow"),
                  leading: Icon(Icons.slideshow),
                ),
                ListTile(
                  title: Text("Tools"),
                  leading: Icon(Icons.settings),
                ),
                Divider(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text("communicate",style: TextStyle(fontWeight: FontWeight.bold),)),

                ListTile(
                  title: Text("Share"),
                  leading: Icon(Icons.share),
                ),
                ListTile(
                  title: Text("Send"),
                  leading: Icon(Icons.send),
                ),
                ListTile(
                  title: Text("Exit"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

