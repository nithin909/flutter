import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: btmsht2()
  ));
}
class btmsht2 extends StatefulWidget {
  @override
  State<btmsht2> createState() => _btmsht2State();
}

class _btmsht2State extends State<btmsht2> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sample Bottom sheet")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _btmShow(context);
          },
          child:Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}

void _btmShow(BuildContext cntx){
  showModalBottomSheet(
      context: cntx,
      builder: (cntx) => Padding(
          padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 15,
          ),
              child: list1(),
          ),
  );
}

class list1 extends StatelessWidget{
  final List<String>  titles = [
    "Share ",
    "Copy Link",
    "Edit"
  ];

  final List icons=[
    Icons.share,
    Icons.copy,
    Icons.edit
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (cntx, index){
          return Container(
            child: ListTile(
              title: Text(titles[index]),
              leading: Icon(icons[index]),
            ),
          );
        }
    );
  }

}