import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelList(),
  ));
}

class HotelList extends StatefulWidget {
  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            leading: Icon(Icons.drag_handle_outlined),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.favorite_border),
              )
            ],
            bottom: AppBar(
              toolbarHeight: 120,
              title: Container(
                height: 100,
                width: double.infinity,
                //color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Type Your Location",
                      style: TextStyle(fontSize: 20),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.0, left: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: TextField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                            hintText: 'Kakkanad,Cochin',
                            prefixIcon: Icon(Icons.search),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 15,
              ),
              HotelType(),
              SizedBox(
                height: 15,
              ),
              Hotels(),
            ]),
          ),
        ],
      ),
    );
  }
}

class HotelType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                border: Border.all(color: Colors.pink),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.hotel_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    "Hotel",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant,
                    color: Colors.white,
                  ),
                  Text(
                    "Resturant",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_cafe,
                    color: Colors.white,
                  ),
                  Text(
                    "Cafe",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Hotels extends StatelessWidget {
  List hotelimages = [
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://media.istockphoto.com/photos/hotel-room-suite-with-view-picture-id627892060?k=20&m=627892060&s=612x612&w=0&h=k6QY-qWNlFbvYhas82e_MoSXceozjrhhgp-krujsoDw=",
    "https://image.shutterstock.com/image-illustration/modern-sea-view-bedroom-3d-260nw-756956185.jpg",
    "https://image.made-in-china.com/202f0j00MeUfkNDaAqbw/Middle-East-Furniture-Design-Bedroom-Sets-Modern-Hotel-Room-Furniture.jpg",
  ];

  List<String> Names = ["Awsome room near kakkanad", "Peaceful Room","Beautyful Room", "Vintage room near Kochi"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hotelimages.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  //width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: NetworkImage(hotelimages[index]),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Names[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kakkanad,Kochi",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Rating(),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star_border,
          color: Colors.amber,
        ),
        Text("(400 Ratings)"),
      ],
    ));
  }
}
