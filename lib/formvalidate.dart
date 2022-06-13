import 'package:flutter/material.dart';

class FormValidate extends StatelessWidget{
  final form = GlobalKey<FormState>(); //for storing form state.

  //saving form after validation
  void _saveform(){
    final isValid = form.currentState!.validate();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Form(
            key: form,
            child: ListView(
              c
            )
        ),
      ),
    );
  }

}