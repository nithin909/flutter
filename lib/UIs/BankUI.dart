import 'package:flutter/material.dart';

void main(){
  runApp(BankUi());
}

class BankUi extends StatefulWidget{
  @override
  State<BankUi> createState() => _BankUiState();
}

class _BankUiState extends State<BankUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(

        ),
      ),
    );
  }
}