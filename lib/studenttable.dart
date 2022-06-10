import 'package:flutter/material.dart';

// void main() {
//   runApp(Studenttable());
// }

class Studenttable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: const Text("Student Details",style: TextStyle(fontStyle: FontStyle.italic),),
          leading: Icon(Icons.person),
        ),
        body: StudentTable(),
      ),
    );
  }
}

class StudentTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataTable(
        columns: const [
          DataColumn(
              label:
                  Text("Name", style: TextStyle(fontStyle: FontStyle.italic))),
          DataColumn(
              label:
                  Text("Age", style: TextStyle(fontStyle: FontStyle.italic))),
          DataColumn(
              label:
                  Text("Role", style: TextStyle(fontStyle: FontStyle.italic))),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Janine')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('william')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          )
        ],
      ),
    );
  }
}
