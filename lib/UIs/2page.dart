import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.lightGreen),
    home: Page1(),
  ));
}

class Page1 extends StatefulWidget{

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
 List  Pages =[ Page0() , Page2() , Page3() ];

 int selectedindex = 0;

 void onTapped (int index){
   setState(
       (){
         selectedindex =index;
       }
   );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Pages.elementAt(selectedindex),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightGreenAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person_add_alt,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),label: ''),
        ],
        currentIndex: selectedindex,
        onTap: onTapped,
      ),
      );

  }
}
class Page0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 100,
      ),
    );
  }
}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 100,
      ),
    );
  }
}

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 100,
        title: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      ),

      body: Padding(
        padding: EdgeInsets.all(35),
        child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
            itemBuilder: (BuildContext context, int index)
              {
                return  Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 120,
                      width: double.infinity,
                    child: Center(child:Text("Looking for a teacher")),

                    ),
                    SizedBox(height: 10,)
                  ],
                );
              },

      ),
    ),
    );
  }
}