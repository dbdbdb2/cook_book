import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Counter()
    ),

  );

}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 0;

  void increment() => ++counter;
  void decrement() => --counter;

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Center(child: Text('Número de clicks:\n ${counter}', style: 
            TextStyle(fontSize: 35))),

            Expanded(child: FloatingActionButton(
              onPressed: () => ++counter,
              backgroundColor: Colors.blue[900],
              child: const Icon(Icons.add),
            ),)

          ],
          
          


        ),
      ),
    ),
  );
}