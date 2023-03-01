import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Lion()
    ),

  );

}

class Lion extends StatefulWidget {
  const Lion({Key? key}) : super(key: key);

  State<Lion> createState() => _LionState();
}

class _LionState extends State<Lion> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.yellowAccent[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lion', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.yellowAccent[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
            ),
            onPressed: () {
              Fluttertoast.showToast(
                msg: "DBG",
              );
            },
            child: const Text('',
              style: TextStyle(fontSize: 30, backgroundColor: Colors.yellowAccent)),
          )

        ),
      ),
    ),
  );
}