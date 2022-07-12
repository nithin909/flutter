import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Farmer(),
  ));
}

class Farmer extends StatefulWidget {
  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.location_on_outlined)),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Search for vegetables and fruits..',
                    prefixIcon: Icon(Icons.search),
                  )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 20,
                    width: 150,
                    child: Center(
                      child: Text(
                        "VEGETABLES",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),

                    height: 25,
                    width: 150,
                    child: Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    height: 25,
                    width: 150,
                    child: const Center(
                      child: Text(
                        "EXOTIC CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/ffz.jpg'),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    //color: Colors.grey,
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(
                            height: 10,
                          ),
                          Text("30 mins ploicy")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.camera_front_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Traceability")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.home_work),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Local Sourrounding")
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shop by Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
                VegGrid(),
            ]
              ),

          ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),label: 'Account')
          
        ],
        
      ),
    );
  }
}

class VegGrid extends StatelessWidget{

  List<String> images = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "data:image/jpeg;base64,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",
    "https://nationaltoday.com/wp-content/uploads/2021/06/National-Herbs-and-Spices-Day-1-640x514.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   height: 120,
                   width: 120,
                   //  height: MediaQuery.of(context).size.height*3,
                   //  width: MediaQuery.of(context).size.width*3,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage(images[index])),
                      ),

                    ),
                  SizedBox(height: 8,),
                  Text(names[index]),
                ],
              );
        }
    );
  }

}