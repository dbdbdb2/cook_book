import 'package:flutter/material.dart';

class Route2 extends StatefulWidget {
  const Route2({Key? key}) : super(key: key);

  @override
  State<Route2> createState() => _Route2State();
}

class _Route2State extends State<Route2> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.red[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Route2', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.red[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),
                    backgroundColor: Colors.red),
                onPressed: () => Navigator.pop(context),
                child: const Text('back', style: TextStyle(fontSize: 30)),

              )
            ],
          ),
        ),

      ),

    ),

  );

}

