import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonToCreateRows(),
    );
  }
}

class ButtonToCreateRows extends StatefulWidget {
  @override
  _ButtonToCreateRowsState createState() => _ButtonToCreateRowsState();
}

class _ButtonToCreateRowsState extends State<ButtonToCreateRows> {
  List<String> rowData = [];

  void addNewRow() {
    setState(() {
      rowData.add('Row ${rowData.length + 1}');
    });
  }

  void deleteRow(int index) {
    setState(() {
      rowData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button to Create Rows'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: rowData.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Add your button logic here
                      },
                      child: Text('Button 1'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your button logic here
                      },
                      child: Text('Button 2'),
                    ),
                    Text(rowData[index]),
                    ElevatedButton(
                      onPressed: () {
                        deleteRow(index);
                      },
                      child: Text('Delete'),
                    ),
                  ],
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: addNewRow,
            child: Text('Add Row'),
          ),
        ],
      ),
    );
  }
}
