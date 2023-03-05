import 'package:flutter/material.dart';

class Route4 extends StatelessWidget {
  const Route4({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Route4', style: TextStyle(fontSize: 40)),
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
