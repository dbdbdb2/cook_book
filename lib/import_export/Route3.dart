import 'package:flutter/material.dart';

class Route3 extends StatelessWidget {
  const Route3({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Route3', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),


        ),
      ),

    )),

  );

}
