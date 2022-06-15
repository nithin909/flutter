import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _SnackBar(),
  ));
}

class _SnackBar extends StatelessWidget {
  final snackbar = SnackBar(
    content: const Text("Yey! a snackbar"),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        //On press action code here
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        child: Text("Click here"),
      ),
    );
  }
}
