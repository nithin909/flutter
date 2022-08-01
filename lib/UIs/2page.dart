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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.lightGreenAccent,
            title: Center(child: Text("Search Result"),),
            bottom: AppBar(
              backgroundColor: Colors.lightGreenAccent,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_back),
                    hintText: 'Search'
                  ),
                ),

              ),
                actions: [
                  Icon(Icons.menu),
                  Icon(Icons.search),
                  Icon(Icons.more_vert),
                ],
            )
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 10,),
                Bodylist(),
              ]
              )
          ),
        ],
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
                        color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 120,
                      width: double.infinity,
                    child: Center(child:Text("Looking for a teacher",style: TextStyle(color: Colors.black54),)),

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

class Bodylist extends StatelessWidget{
  List names =["John Doe","Joseph Moor","John Doe","Joseph Moor"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iRETW7ZQwdE8/v1/1200x-1.jpg"),),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(names[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                          Text("Teacher with 5 year experience"),
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Star(),
                          Text("4.5"),
                          Text("50\$ / hr")
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Profile")),
                        ElevatedButton(onPressed: (){}, child: Text("Hire")),
                      ],
                    ),
                    SizedBox(height: 15,)
                  ],
                ),

              ),
            ],
          );
        }
    );
  }

}

class Star extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );
  }

}