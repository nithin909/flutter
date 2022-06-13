import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'LoginUser.dart';
import 'contactlist.dart';
import 'formvalidate.dart';

class RegisterPage extends StatelessWidget{
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        body:Card(
          color: Colors.white70,
          margin: EdgeInsets.all(10),
          child: Form(
            key: _form,
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  SizedBox(height: 10,),
                  Center(
                    child: Icon(Icons.star_border),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (text){
                      if(text == null || text.isEmpty)
                        return "Enter a name";
                    },
                    decoration: const InputDecoration(
                      labelText: 'Fullname',
                      icon: Icon(Icons.person_add_outlined),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (text){
                      if (text == null|| !(text.contains('@')) || text.isEmpty ){
                        return "Enter a valied Email!";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.mail),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.key),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      icon: Icon(Icons.key),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 50,
                        primary: Colors.red,
                        padding: EdgeInsets.all(10),
                      ),
                      onPressed:(){
                        final isValid = _form.currentState!.validate();
                        if(isValid){
                          Fluttertoast.showToast(msg:'User Registered') ;
                        }
                        else{
                          Fluttertoast.showToast(
                              msg:"Enter full details",
                              fontSize: 15,
                              gravity: ToastGravity.TOP,
                              backgroundColor: Colors.orange
                          );
                        }

                  }, child: Text("Register")
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormValidate()));

                  }, child: Text("Already Registered?    'Login'"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}