import 'package:flutter/material.dart';

class Route7 extends StatelessWidget {
  const Route7({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Route7', style: TextStyle(fontSize: 40)),
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
