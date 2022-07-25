import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profileui(),
  ));
}

class Profileui extends StatelessWidget{

  final List<String> Texts = [
    "Privacy",
    "Purchase History",
    "Help & Supprot",
    "Settings",
    "Invite a Friend",
    "Log Out"
  ];
  final List<Icon> ics = [
    Icon(Icons.privacy_tip_outlined,color: Colors.black,),
    Icon(Icons.history,color: Colors.black),
    Icon(Icons.help_outline,color: Colors.black),
    Icon(Icons.settings_outlined,color: Colors.black),
    Icon(Icons.person_add_alt,color: Colors.black),
    Icon(Icons.logout,color: Colors.black),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.menu,color: Colors.black,),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 15,),
            Center(child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg"),
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
               //
            ),
            ),
            Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.facebookF,color: Colors.white,),backgroundColor: Colors.blue[900],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.google,color: Colors.white,),backgroundColor: Colors.redAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.twitter,color: Colors.white,),backgroundColor: Colors.blue,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(child: FaIcon(FontAwesomeIcons.linkedinIn,color: Colors.white,),backgroundColor: Colors.indigo[700],),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Virat Kohli",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text("@amFoster"),
            Text("Mobile App Developer and open\n Source enthusiastic"),
             Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: Texts.length,
                  itemBuilder: ( context,int index){
                    return Card(
                      child: ListTile(
                        leading: ics[index],
                        title: Text(Texts[index]),
                        trailing: const Icon(Icons. chevron_right),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}