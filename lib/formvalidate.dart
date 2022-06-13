import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'contactlist.dart';

void main(){
  runApp(MaterialApp(
      home:FormValidate()
  ));
}

class FormValidate extends StatelessWidget{
  final form = GlobalKey<FormState>(); //for storing form state.

  //saving form after validation
  //void _saveform(){
   // final isValid = form.currentState!.validate();
 // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Form(
            key: form,
            child: ListView(
              children: [
                TextFormField(
                  validator: (text){
                    if (text == null|| !(text.contains('@')) || text.isEmpty ){
                      return "Enter a valied Email!";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  validator: (text){
                    if (text == null || !(text.length <= 5) || text.isEmpty){
                      return "Enter a valid password with 5 charectors";
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                  ),
                ),
                ElevatedButton(onPressed: (){
                  final isValid = form.currentState!.validate();
                  if(isValid){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => ContactList()
                        )
                    );
                  }else{
                      Fluttertoast.showToast(
                          msg:"Email or password incorrect",
                          fontSize: 15,
                          gravity: ToastGravity.TOP,
                        backgroundColor: Colors.orange
                      );
                  }
                }, child:Text("Submit")),
                TextButton(onPressed: (){

                },
                    child: Text("Not a user register here")
                )
              ],
            )
        ),
      );

  }

}