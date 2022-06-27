import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Btmsheet(),
    )
  );
}

class Btmsheet extends StatefulWidget{
  @override
  State<Btmsheet> createState() => _BtmsheetState();
}

class _BtmsheetState extends State<Btmsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()
        {
          _show(context);
        },
        child: Text("Click Here"),
        ),
      ),
    );
  }
}

void _show(BuildContext ctx){
  showModalBottomSheet(
      context: ctx,
      builder: (ctx) => Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(ctx).viewInsets.bottom+15),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(

                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: 'Class',focusColor: Colors.red),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(ctx).pop();
                        },
                        child: Text("Submit")
                    ),

                    ElevatedButton(

                        onPressed: (){
                          Navigator.of(ctx).pop();
                        },
                        child: Text("Close")
                    ),
                  ],
                )
              ],
            ),
          )
  );
}