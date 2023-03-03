import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Evaluation()
    ),

  );

}

class Evaluation extends StatefulWidget {
  const Evaluation({Key? key}) : super(key: key);

  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Evaluation', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.grey[900],
      ),

      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Center(child: Icon(Icons.star, color: Colors.red[500])),
              Center(child: Icon(Icons.star, color: Colors.red[500])),
              Center(child: Icon(Icons.star, color: Colors.red[500])),
              Center(child: Icon(Icons.star, color: Colors.red[500])),
              Center(child: Icon(Icons.star, color: Colors.red[500])),


            ],

          ),
        ),
      ),
  );
}