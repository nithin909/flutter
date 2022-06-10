import 'package:flutter/material.dart';

void main(){

  runApp(ContactList());
}

class ContactList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("contacts"),
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text("Abin"),
              subtitle: Text("9544653852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("Baiju"),
              subtitle: Text("754853852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.RXc6rqIW4FcabtgSapHzJwHaLL?pid=ImgDet&rs=1" ),),
            ),ListTile(
              title: Text("Chacko"),
              subtitle: Text("6589453852"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.EKYXQylbAv9brvwuEFTN5wHaFK?pid=ImgDet&rs=1" ),),

              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
            ),ListTile(
              title: Text("Derik"),
              subtitle: Text("9586653852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.EKYXQylbAv9brvwuEFTN5wHaFK?pid=ImgDet&rs=1"),),
              trailing: Icon(Icons.call),
            ),ListTile(
              title: Text("Ebin"),
              subtitle: Text("861353852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.RXc6rqIW4FcabtgSapHzJwHaLL?pid=ImgDet&rs=1" ),),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("febin"),
              subtitle: Text("486653852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/R.a4e59798013d669bc2673b7f777ded04?rik=wuGT61RdomwgiA&riu=http%3a%2f%2fwww.businessinsider.in%2fphoto%2f55813290%2fHeres-how-Shahrukh-Khan-stays-so-damn-fit-at-the-age-of-51.jpg%3f745908&ehk=LgVKh1XDh38SiiAXi%2bg59CEJy60wrLQWfRN2dHsanqQ%3d&risl=&pid=ImgRaw&r=0" ),),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("Gibin"),
              subtitle: Text("9545689852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("Kevin"),
              subtitle: Text("9545689852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.M0RbW7VZO4xWaQpofrxdqAHaEo?pid=ImgDet&rs=1" ),),
            ),
            ListTile(
              title: Text("Robin"),
              subtitle: Text("9545689852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("shown"),
              subtitle: Text("9545689852"),
              //leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://ilarge.lisimg.com/image/10016349/740full-chris-hemsworth.jpg"),),
            )
          ],
        ),
      ),
    );
  }
}