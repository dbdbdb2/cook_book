import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Class
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is
//the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Class
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String txt = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('DBG', style: TextStyle(fontSize: 35)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      backgroundColor: Colors.grey[100],

      body: Column(
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text(
              'ListTile', style: TextStyle(fontSize: 25)
            ),
            trailing: const Icon(Icons.done),
            subtitle: const Text('This is subtitle', style: TextStyle
              (fontSize: 20)),
            selected: true,

            onTap: () {
              setState(() {
                txt = 'List Tile pressed';
              });
            },

          ),
          const ListTile(title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
          ListTile(
            title: Text("Ballot"),
            leading:  CircleAvatar(backgroundImage: AssetImage("image/react.png")),
            trailing: Icon(Icons.star)
          ),

        ],
      ),
    );
  }
}
