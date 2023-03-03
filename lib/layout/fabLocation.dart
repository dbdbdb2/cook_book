import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      fabLocation()
    ),

  );

}

class fabLocation extends StatefulWidget {
  const fabLocation({Key? key}) : super(key: key);

  State<fabLocation> createState() => _fabLocationState();
}

class _fabLocationState extends State<fabLocation> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('fabLocation', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.green[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Clicked nº times: ', style: TextStyle(fontSize: 35)),
              const Text('10', style: TextStyle(fontSize: 35)),
            ],
          ),
        ),
      ),
    )
  );
}