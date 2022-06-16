import 'package:flutter/material.dart';

void main(){
  runApp(grid1());
}

class grid1 extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Grid view",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
            ),
          ),
        ),
        body: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            children: List.generate(20, (index) {
              return Padding(
                  padding: EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://media.istockphoto.com/photos/closeup-of-a-lion-roaring-isolated-on-white-picture-id456097309?k=20&m=456097309&s=612x612&w=0&h=naznsZaQRfIUh65iq6UVg3Zq3OJIAYWtXR-YmhLsFNs="),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              );
            })
            )
      ),
    );
  }
}
