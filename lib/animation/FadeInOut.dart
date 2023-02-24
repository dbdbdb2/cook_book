import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Fade';
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// The State class is responsible for two things:
// holding some data you can update
// building the UI using that data.
class _MyHomePageState extends State<MyHomePage> {

  // Whether the green box should be visible
  bool _visible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(fontSize: 35, color: Colors.black),),
      ),
      body: Center(

        child: AnimatedOpacity(

          // visible -> animate to 0 (invisible).
          // hidden -> animate to 1 (visible).
          opacity: _visible ? 1 : 0,

          duration: const Duration(milliseconds: 500),

          child: Container(
            width: 400,
            height: 400,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,

        onPressed: () {

          setState(() {
            _visible = !_visible;
          });
        },
        child: const Icon(Icons.flip),
      ),
    );
  }
}