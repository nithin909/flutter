import 'package:flutter/material.dart';

void main() {
  runApp(List2());
}

class List2 extends StatelessWidget {
  final mylist = List.generate(15, (index) => "product $index");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: const Text("Listview")),
          ),
      body: ListView.separated(
          itemCount: mylist.length,
          itemBuilder: ( context, int index){
        return ListTile(
          tileColor: Colors.black45,
                  title: Text("This is the list file $index"),
                   leading: CircleAvatar(child: Text("O",style: TextStyle(fontWeight: FontWeight.bold),)),
        );
      },

          separatorBuilder: (BuildContext context, int index){
            return SizedBox(
              height: 2,
            );
            // return Divider(
            //   height: 2,
            //   color: Colors.black,
            // );
          },
      ),


          // ListView.builder(
      //     itemCount: mylist.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return ListTile(
      //         tileColor: Colors.teal[100],
      //         title: Text("This is the list file $index"),
      //         leading: CircleAvatar(child: Text("O",style: TextStyle(fontWeight: FontWeight.bold),)),
      //       );
      //     }),
    )
    );
  }
}
