import 'package:flutter/material.dart';

class MainListView extends StatelessWidget {
  const MainListView({Key? key}) : super(key: key);

  final games = const ['Megaman', 'Final Fantasy', 'Super Smash'];

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MainListView', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        children: [

          // convert list -> map
          ...games.map((game) => ListTile(
              title: Text(game, style: TextStyle(fontSize: 25)),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ),
          Divider(
            color: Colors.black,
          ),

        ],
      )

    )),

  );

}

