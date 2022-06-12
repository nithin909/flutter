import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onTap: () {
                  print("tapped");
                },
                textCapitalization: TextCapitalization.characters,
                toolbarOptions: ToolbarOptions(
                  copy: true,
                  cut: true,
                  paste: true,
                  selectAll: true,
                ),

                //autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  //hintText: "enter email",
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              )),
          Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                enabled: true,
                decoration: (InputDecoration(
                  labelText: "password",
                  //border: InputBorder.none
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  prefixIcon: Icon(Icons.safety_check),
                  helperText: 'enter letters and numbers',
                )),
              )),
          Center(
            child: ElevatedButton(onPressed: (){}, child: Text("Login")),
          )
        ],
      ),
    );
  }
}
