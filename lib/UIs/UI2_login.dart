import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UiLogin1(),
  ));
}

class UiLogin1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
                  fit:BoxFit.cover,
                  opacity: 0.8,
                  image:AssetImage("assets/images/photo-1629140727571-9b5c6f6267b4.jpg"),
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 45,),
            Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70,fontSize: 30),),
            Text("Welcome to this awsome login app.",style: TextStyle(color: Colors.white70,fontSize: 20)),
            Text("You are awsome.",style: TextStyle(color: Colors.white70,fontSize: 20)),
            SizedBox(height: 400,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                    onPressed: (){},
                    child: Text("Login")
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                    ),
                    onPressed: (){},
                    child: Text("Sign up")
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              width: 200,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.red,width: 2),
                 borderRadius: BorderRadius.all(Radius.circular(50.0)),
               ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.radio_button_on_sharp),
                  //Image(image: NetworkImage("https://mpng.subpng.com/20190830/qyj/transparent-favicon-google-icon-logo-icon-5d68e5887b63f3.8628714215671555925054.jpg"),
                  //height: 5,width: 5,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: (){},
                      child: Text("Continue with Google"),
                  ),
                ],
              ),
            ),
          ],
        ),
    )
    );
  }
}