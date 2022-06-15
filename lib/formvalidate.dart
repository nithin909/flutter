import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'RegisterPage.dart';
import 'contactlist.dart';

void main(){
  //to ide statusbar
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //
  // ])
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
      home:FormValidate()
  ));
}

class FormValidate extends StatelessWidget{
  final form = GlobalKey<FormState>(); //for storing form state.


  final snackbar = SnackBar(
    content: const Text("Yey! a snackbar"),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        //On press action code here
      },
    ),
  );
  //saving form after validation
  //void _saveform(){
   // final isValid = form.currentState!.validate();
 // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      ),
        // SizedBox(height: 10,),
        body:Container(
          padding: EdgeInsets.all(10),
          child: Form(
              key: form,
              child: ListView(
                children: [
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    final isValid = form.currentState!.validate();
                    if(isValid){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => ContactList()
                          )
                      );
                    }else{
                        // Fluttertoast.showToast(
                        //     msg:"Email or password incorrect",
                        //     fontSize: 15,
                        //     gravity: ToastGravity.TOP,
                        //   backgroundColor: Colors.orange
                        // );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);

                    }
                  }, child:Text("Submit")),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterPage()));

                  },
                      child: Text("Not a user register here")
                  )
                ],
              )
          ),
        ),
      );

  }

}