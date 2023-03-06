import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView.builder', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),


      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  'DBG',
                  style: TextStyle(color: Colors.blue, fontSize: 35),
                ),
                title: Text("List item $index", style: TextStyle(fontSize: 25)));
          }),
    );
  }
}