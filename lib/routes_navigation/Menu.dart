import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  final animals = const ['Alligator', 'Buffalo', 'Cracken', 'Dolphin'];

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Menu', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),
          
      body: ListView.builder(
         itemCount: animals.length,
         itemBuilder: (BuildContext context, int i) => ListTile(
           leading: const Icon(Icons.sports_basketball, size: 30, color: Colors.black),
           title: Text(animals[i], style: TextStyle(fontSize: 30)),
           trailing: const Icon(Icons.flag),
         ),
      )
    ))
    
  );

}
