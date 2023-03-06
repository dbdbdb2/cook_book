import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final animals = const ['Armadillo', 'Bear', 'Crocodrile', 'Elephan'];

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('App', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: ListView.builder(
         itemCount: animals.length,
         itemBuilder: (BuildContext context, int i) => ListTile(
           title: Text(animals[i]),
         ),
      )
    )),

  );

}
