import 'package:flutter/material.dart';


void main() {
  int score = 7;
  bool hasPassed = score > 5 ? true : false;
  print ('hasPassed -> $hasPassed');

  runApp(TernaryOperator());

}

class TernaryOperator extends StatelessWidget {
  const TernaryOperator({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TernaryOperator', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: Center(

          ),

        ),
      ),

    )),

  );

}
