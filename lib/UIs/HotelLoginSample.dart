import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    home: Hotellogin(),
  ));
}

class Hotellogin extends StatefulWidget{
  @override
  State<Hotellogin> createState() => _HotelloginState();
}

class _HotelloginState extends State<Hotellogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/photo-1629140727571-9b5c6f6267b4.jpg'),
            fit: BoxFit.cover,
            ),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black45,
              child: Column(
                children: [
                  SizedBox(height: kToolbarHeight + 40,),
                  Expanded(
                      child: Column(
                        children: [
                          Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10.0,),
                          Text("Welcome to this awsome login App \n You are awsome",
                          style: TextStyle(color: Colors.white70,fontSize: 18),
                          textAlign: TextAlign.center,)
                        ],
                      ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )
                            ),
                            child: Text("Login"),
                            onPressed: (){},
                          ),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )
                          ),
                          child: Text("Signup"),
                          onPressed: (){},
                        ),
                      ),
                      SizedBox(width: 10.0,),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.google),
                    label: const Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,)
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}