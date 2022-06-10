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
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),ListTile(
              title: Text("Chacko"),
              subtitle: Text("6589453852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),ListTile(
              title: Text("Derik"),
              subtitle: Text("9586653852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),ListTile(
              title: Text("Ebin"),
              subtitle: Text("861353852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("febin"),
              subtitle: Text("486653852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("Gibin"),
              subtitle: Text("9545689852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("Kevin"),
              subtitle: Text("9545689852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("Robin"),
              subtitle: Text("9545689852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            ),
            ListTile(
              title: Text("shown"),
              subtitle: Text("9545689852"),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              //leading: CircleAvatar(child: Image.network("https://th.bing.com/th/id/R.4a6dabbf200f0a7af703b5c1686e0799?rik=sM1Js6fNsMJE7A&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f01%2fTom-Cruise-Images.jpg&ehk=uOstrZzfCz2pijcHvmc4eE4vxXEaX4cCGRqqsbm000Y%3d&risl=&pid=ImgRaw&r=0" ),),
            )
          ],
        ),
      ),
    );
  }
}