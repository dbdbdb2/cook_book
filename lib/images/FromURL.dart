import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title, style: TextStyle(fontSize: 35),),
        ),
        body: Center(child: Image.network('https://bodgirls.com/wp-content/uploads/2018/10/naked-girls-in-public-mix-vol5-20-800x516.jpg')),
      ),
    );
  }
}