
//  shared_preferences

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Shared preferences demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {

    // GET SHARED PREFERENCES
    final preferences = await SharedPreferences.getInstance();

    setState(() {
      _counter = (preferences.getInt('counter') ?? 0);
    });

  }

  // INCREMENTING COUNTER
  Future<void> _incrementCounter() async {

    final preferences = await SharedPreferences.getInstance();

    setState(() {
      _counter = (preferences.getInt('counter') ?? 0) + 1;
      preferences.setInt('counter', _counter);
    });

  }

  Widget build(BuildContext context) =>

    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(fontSize: 35)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
}
