/*
*
* dependencies:
    flutter:
      sdk: flutter
    video_player:
*
*     <uses-permission android:name="android.permission.INTERNET"/>
*
* */

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Video()
    ),

  );

}

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Video', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child:  Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.red,
          ),

        ),
      ),
    ),
  );
}