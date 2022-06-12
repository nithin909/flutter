import 'package:flutter/material.dart';

import 'contactlist.dart';

class LoginUser extends StatefulWidget{
  @override
  State<LoginUser> createState() => LoginUserState();
}

class LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter your Username'

                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your password'
                ),
              ),
            ),
            Center(
              child: ElevatedButton(onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ContactList())), child: Text("Login")),
            )
          ],
        ),
      ),
    );

  }
}