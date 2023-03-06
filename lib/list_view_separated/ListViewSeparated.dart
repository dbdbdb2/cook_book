import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({Key? key}) : super(key: key);

  final laLiga = const ['fcb', 'rm'];

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListViewSeparated', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: ListView.separated(
            itemCount: laLiga.length,
            itemBuilder: (BuildContext context, int i) => ListTile(
              leading: const Icon(Icons.sports_volleyball_sharp),
              title: Center(child: Text(laLiga[i])),
              trailing: const Icon(Icons.list),
           ),
           separatorBuilder: (BuildContext context, int i) => const Divider(color: Colors.black, thickness: 1),
          ),

        ),
      ),

    )),

  );

}
