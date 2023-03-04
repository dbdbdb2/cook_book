import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      FabRow()
    ),

  );

}

class FabRow extends StatefulWidget {
  const FabRow({Key? key}) : super(key: key);

  State<FabRow> createState() => _FabRowState();
}

class _FabRowState extends State<FabRow> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('FabRow', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.green[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          FloatingActionButton(
            onPressed: () => null,
            backgroundColor: Colors.green[900],
            tooltip: '3G',
           child: const Icon(Icons.three_g_mobiledata),
          ),
          FloatingActionButton(
            onPressed: () => null,
            backgroundColor: Colors.green[900],
            tooltip: '4G',
            child: const Icon(Icons.four_g_mobiledata),
          ),
          FloatingActionButton(
            onPressed: () => null,
            backgroundColor: Colors.green[900],
            tooltip: '5G',
            child: const Icon(Icons.five_g),
          ),

        ],
      )
    ),
  );
}