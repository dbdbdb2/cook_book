import 'package:flutter/material.dart';

class ListViewNav extends StatelessWidget {
  const ListViewNav({Key? key}) : super(key: key);

  final routes = const ['Route 1', 'Route 2', 'Route 3', 'Route 4'];

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListViewNav', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: ListView.builder(
             itemCount: routes.length,
             itemBuilder: (BuildContext context, int i) => ListTile(
               leading: const Icon(Icons.accessibility, size: 30),
               title: Text(routes[i], style: TextStyle(fontSize: 28)),
             ),
          )
        ),
      ),

    )),

  );

}
