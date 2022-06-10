import 'package:flutter/material.dart';

void main() {
  runApp(MyList());
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyListView"),
        ),
        body: ListView(
          children: const [
            // Center(
            //     child: Text(
            //   "Fruits",
            //   style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       color: Colors.teal,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 25),
            // )),
            ListTile(
                title: Text("Apple"),
                subtitle: Text("10 apples"),
                leading: CircleAvatar(
                    child: Icon(
                  Icons.star_border,
                  color: Colors.blueAccent,
                )),
                trailing: Icon(
                  Icons.music_note_sharp,
                  color: Colors.blueAccent,
                )),
            ListTile(
                title: Text("Banana"),
                subtitle: Text("10 Bananas"),
                leading: CircleAvatar(child: Icon(Icons.star_border, color: Colors.green)),
                trailing: Icon(
                  Icons.star_rate,
                  color: Colors.lightGreen,
                )),
            ListTile(
                title: Text("orange"),
                subtitle: Text("10 oranges"),
                leading: CircleAvatar(child: Icon(Icons.star_border, color: Colors.amber)),
                trailing: Icon(
                  Icons.star_border,
                  color: Colors.amberAccent,
                )),
            ListTile(
                title: Text("Mango"),
                subtitle: Text("10 Mangos"),
                leading: CircleAvatar(child: Icon(Icons.star_border, color: Colors.deepPurpleAccent)),
                trailing: Icon(
                  Icons.star_border,
                  color: Colors.redAccent,
                )),
          ],
        ),
      ),
    );
  }
}
