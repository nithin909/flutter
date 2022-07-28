import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(YoutubeHome());
}

class YoutubeHome extends StatefulWidget{
  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {

int selectedindex =0;
final navtabs = [
  HomePage(),
  explore(),
  //Addpage(),
  //Subscription(),
  //Library(),
];

void ontapped(int index){
  setState(
      (){
        selectedindex = index;
      }
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Center(child: FaIcon(FontAwesomeIcons.youtube,color: Colors.red,)),
          title: Text("Youtube",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.cast),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg"),
              ),
            ),
          ],
        ),

        body:navtabs.elementAt(selectedindex),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.white,
          onTap: ontapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),activeIcon: Icon(Icons.home),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.explore),label:"Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle),label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions_rounded),label: "Subscriptions"),
            BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library"),
          ],

        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: 'Rider',
    title: 'Look this Zebra',
    thumbnailUrl:
    'https://images.unsplash.com/photo-1598755257130-c2aaca1f061c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2lsZCUyMGFuaW1hbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    duration: '8:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
  ),
  Video(
    author: 'king',
    id: 'vrPk6LB9bjo',
    title: 'Where to Find the Cutest, Most Amazing Animals on the Web',
    thumbnailUrl:
    'https://images.unsplash.com/photo-1598755257130-c2aaca1f061c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2lsZCUyMGFuaW1hbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
  ),
  Video(
    id: 'Look this Lion',
    author: 'Lion',
    title: 'Where to Find the Cutest, Most Amazing Animals on the Web',
    thumbnailUrl:
    'https://images.unsplash.com/photo-1598755257130-c2aaca1f061c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2lsZCUyMGFuaW1hbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
  ),
];




class Video {
  final String id;
  final String author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}











class explore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Hello"),
        ),
        ListTile(
          title: Text("How"),
        ),
        ListTile(
          title: Text("Are"),
        ),
        ListTile(
          title: Text("You"),
        ),
      ],
    );
  }

}