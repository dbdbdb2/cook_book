import 'package:flutter/material.dart';
import '1.MainScreen.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const MainScreen(),
    );
  }
}