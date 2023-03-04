import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CounterBody extends StatelessWidget {
  const CounterBody({super.key, required this.counterValueNotifier});

  final ValueNotifier<int> counterValueNotifier;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Current counter value:', style: TextStyle(fontSize: 35),),
          // Thanks to the [AnimatedBuilder], only the widget displaying the
          // current count is rebuilt
          AnimatedBuilder(
            // [AnimatedBuilder] accepts any [Listenable] subtype.
            animation: counterValueNotifier,
            builder: (BuildContext context, Widget? child) {
              return Text('${counterValueNotifier.value}');
            },
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: const Text('AnimatedBuilder', style: TextStyle(fontSize: 35),)),
        body: CounterBody(counterValueNotifier: _counter),

        floatingActionButton: FloatingActionButton(
          onPressed: () => _counter.value++,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


