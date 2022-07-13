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
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.menu),
              title: Row(
                children: [
                  Text("Welcome"),
                  SizedBox(width: 20,),
                  Text("NITHIN THOMAS",style: TextStyle(fontSize: 25,),)
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.qr_code_scanner),
                ),
              ],
            ),
            SliverList(delegate:SliverChildListDelegate(
              [
                StackContainer(),
                WouldYou(),
                IconGrid(),
                Last(),
                section(),

              ]
            )
            )
          ],
        ),
      ),
    );
  }
}

class StackContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 75,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                ),],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Container(
                        height:80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:Border.all(width: 3,color: Colors.red),
                          color: Colors.red
                        ),
                           child:   CircleAvatar(
                                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg"),
                              ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("NITHIN THOMAS"),
                        Row(
                          children: [
                            Text("NPR. 100,999.35",style: TextStyle(color: Colors.red),),
                            SizedBox(width: 8,),
                            Icon(Icons.remove_red_eye,color: Colors.green,size: 15,)
                          ],
                        ),
                        Text("2816493473014963587614305")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class WouldYou extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(Icons.flare_outlined,size: 20,color: Colors.red,),
          SizedBox(width: 15,),
          Text("WOULD YOU LIKE TO?",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class IconGrid extends StatelessWidget{

  List<String> names = [
    "My Account",
    "Load eSeva",
    "Payment",
    "Fund Transfer",
    "Schedule Payment",
    "Scan To Pay",

  ];

  final List<IconData> iconnames = [
    Icons.account_balance,
    Icons.e_mobiledata_rounded,
    Icons.payment,
    Icons.money,
    Icons.schedule_send,
    Icons.qr_code_scanner,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: names.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconnames[index],size: 50,color: Colors.red,),
                SizedBox(height: 8,),
                Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          );
        }
    );
  }
}

class Last extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(Icons.flare_outlined,size: 20,color: Colors.red,),
          SizedBox(width: 15,),
          Text("LAST TRANSACTIONS",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class section extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            width: 6,
            color: Colors.red,
          ),
          title: Text("Hello"),
        );
      },


    );
  }

}
