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
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            title: Text("Hello @rjun", style: TextStyle(color: Colors.grey),),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.person, color: Colors.black),
              )
            ],
            bottom: AppBar(
              toolbarHeight: 120,
              backgroundColor: Colors.white,
              title: Container(
                height: 100,
                width: double.infinity,
                //color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find your favourite hotel",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.0, left: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                          child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                                hintText: 'Search for Hotel',
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
              //HotelScrolleft(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Hotel Packages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("view all",style: TextStyle(color: Colors.blue),),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: PopularHotels(),

          ),

          SliverList(
              delegate: SliverChildListDelegate(
                [
                  HotelPackages(),
                ]
              )
          ),
        ],

      ),
    );
  }
}

class PopularHotels extends StatelessWidget {

  List hotelimages = [
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://media.istockphoto.com/photos/hotel-room-suite-with-view-picture-id627892060?k=20&m=627892060&s=612x612&w=0&h=k6QY-qWNlFbvYhas82e_MoSXceozjrhhgp-krujsoDw=",
    "https://image.shutterstock.com/image-illustration/modern-sea-view-bedroom-3d-260nw-756956185.jpg",
    "https://image.made-in-china.com/202f0j00MeUfkNDaAqbw/Middle-East-Furniture-Design-Bedroom-Sets-Modern-Hotel-Room-Furniture.jpg",
  ];

  List<String> Names = [
    "Crown Plaza",
    "Hotel Marroit",
    "Holiday Inn",
    "Hyatt"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
          'Popular Hotels',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
      ),
        ),
      Expanded(
          child: SizedBox(
            height: 360,
            child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: hotelimages.length,
      itemBuilder: (BuildContext context, int index) =>
      Card(
        child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(hotelimages[index]),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(Names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("A five star hotel in kochi"),
                ],
              )
        ),
      ),
            ),
          )
      ),
      ],
      ),
    );
  }
}

class HotelPackages extends StatelessWidget {

  List hotelimages = [
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://media.istockphoto.com/photos/hotel-room-suite-with-view-picture-id627892060?k=20&m=627892060&s=612x612&w=0&h=k6QY-qWNlFbvYhas82e_MoSXceozjrhhgp-krujsoDw=",
    "https://image.shutterstock.com/image-illustration/modern-sea-view-bedroom-3d-260nw-756956185.jpg",
    "https://image.made-in-china.com/202f0j00MeUfkNDaAqbw/Middle-East-Furniture-Design-Bedroom-Sets-Modern-Hotel-Room-Furniture.jpg",
    "https://media.istockphoto.com/photos/hotel-room-suite-with-view-picture-id627892060?k=20&m=627892060&s=612x612&w=0&h=k6QY-qWNlFbvYhas82e_MoSXceozjrhhgp-krujsoDw=",
    "https://image.shutterstock.com/image-illustration/modern-sea-view-bedroom-3d-260nw-756956185.jpg",

  ];

  List<String> Names = [
    "Crown Plaza",
    "Hotel Marroit",
    "Holiday Inn",
    "Hyatt",
    "Hotel Marroit",
    "Holiday Inn",

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Popular Hotels',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: hotelimages.length,
                itemBuilder: (BuildContext context, int index) =>
                    // Card(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         height: 200,
                    //         width: 200,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.all(Radius.circular(20)),
                    //             image: DecorationImage(
                    //               fit: BoxFit.fill,
                    //               image: NetworkImage(hotelimages[index]),
                    //             )
                    //         ),
                    //       ),
                    //       SizedBox(height: 10,),
                    //       Text(Names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    //       Text("A five star hotel in kochi"),
                    //     ],
                    //   ),
                    // ),
                ListTile(
                  leading: Container(
                    height: 200,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(hotelimages[index]),
                                )
                            ),
                          ),
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("A five star hotel in cochin"),
                      Text("\$180/night", style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                  ),
                ),
              )
          //),
        ],
      ),
    );
  }
}

