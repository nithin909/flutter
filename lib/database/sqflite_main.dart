import 'package:flutter/material.dart';

import 'SQLHelper.dart';

void main(){
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sqlite",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SQFHomePage(),
    );
  }
}

class SQFHomePage extends StatefulWidget{
  @override
  State<SQFHomePage> createState() => _SQFHomePageState();
}

class _SQFHomePageState extends State<SQFHomePage> {

  List<Map<String, dynamic>> _journals = [];

  bool _isLoading = true;

  void _refreshJournals() async {
    final data = await SQLHelper.getItems();
    setState((){
      _journals = data;
      _isLoading = false;
    });
  }

  @override
  void initState(){
    super.initState();
    _refreshJournals();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  void _showForm(int? id) async {
    if (id != null) {
      final existingJournal = _journals.firstWhere((element) => element['id'] == id);

    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(hintText: 'Title'),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(hintText: 'Description'),
              )
            ],
          ),
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite'),
      ),
      body: _isLoading ? Center(child: CircularProgressIndicator(),)

    : ListView.builder(
        itemCount: _journals.length,
          itemBuilder: (context, index) => Card(
            color: Colors.orange[200],
            margin: EdgeInsets.all(15),
            child: ListTile(
              title: Text(_journals[index]['title']),
              subtitle: Text(_journals[index]['description']),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _showForm(_journals[index]['id']);
                        },
                        icon: Icon(Icons.edit),
                    ),
                    IconButton(
                        onPressed: (){
                          _deleteItem(_journals[index]['id']);
                        },
                        icon: Icon(Icons.delete)
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showForm(null),
      ),
      );
  }
}