import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
    home: Route1())
);

class Route1 extends StatefulWidget {
  const Route1({Key? key}) : super(key: key);

  @override
  State<Route1> createState() => _Route1State();
}

class _Route1State extends State<Route1> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Route1', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.green[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.green
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('back', style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),

      ),

    ),

  );

}
