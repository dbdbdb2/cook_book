import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      GetData()
    ),

  );

}

class GetData extends StatefulWidget {
  const GetData({Key? key}) : super(key: key);

  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {

  getUserData() async {

    var response = await Uri.https('https://jsonplaceholder.typicode.com', 'users');

  }

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetData', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

      ),

    ),

  );

}

class User {
  final String _name, _email, _userName;
  User(this._name, this._email, this._userName);
}