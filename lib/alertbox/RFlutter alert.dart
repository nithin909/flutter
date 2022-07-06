
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main(){
  runApp(MaterialApp(
    home: RFlutter(),
  ));
}

class RFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RFlutter Alert box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  basicalertpressed(context);
                },
                child: Text("BasicAlert")
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  basicwaitingalertpressed(context);
                },
                child: Text("Basic Waiting Alert")
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  _onCustomAnimationAlertPressed(context);
                },
                child: Text("Custom Animation Alert")
            ),
          ],
        ),
      ),
    );
  }

   basicalertpressed(context) {
    Alert(
      context: context,
      title: " BASIC RFLUTTER ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
    ).show();
  }
  basicwaitingalertpressed(context){
    Alert(
      context: context,
      title: " BASIC WAITING ALERT",
      desc: "Flutter is more awesome with RFlutter Alert.",
    ).show();
  }
  _onCustomAnimationAlertPressed(context){
    Alert(
      context: context,
      type: AlertType.error,
      title: "CustomAnimation Alert Pressed",
      desc: "Flutter is more awesome with RFlutter Alert.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }
}
