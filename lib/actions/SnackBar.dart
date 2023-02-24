import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const header = 'SnackBar';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: header,
      home: MyHomePage(title: header),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(fontSize: 45),),
        backgroundColor: Colors.red,
      ),
      body: const snackBarDemo(),
    );
  }
}

class snackBarDemo extends StatelessWidget {
  const snackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: EdgeInsets.all(15)
        ),

        onPressed: () {
          const snack = SnackBar(
            content: const Text('SnackBar', style: TextStyle(fontSize: 25)),
            backgroundColor: Colors.black,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          );

          ScaffoldMessenger.of(context).showSnackBar(snack);

        },
        child: const Text('Click Here', style: TextStyle(fontSize: 30),),
      ),

    );
  }
}
