import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Nesting()
    ),

  );

}

class Nesting extends StatefulWidget {
  const Nesting({Key? key}) : super(key: key);

  State<Nesting> createState() => _NestingState();
}

class _NestingState extends State<Nesting> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nesting', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.green[900],
      ),

      body: Column(


      ),
    ),
  );
}