import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';


class CreateToast extends StatefulWidget {
  const CreateToast({Key? key}) : super(key: key);

  State<CreateToast> createState() => _CreateToastState();
}

class _CreateToastState extends State<CreateToast> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
        backgroundColor: Colors.indigo[200],

        appBar: AppBar(
          centerTitle: true,
          title: const Text('Toast', style: TextStyle(fontSize: 40)),
          backgroundColor: Colors.blue[900],
        ),

        body: Center(
          child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               padding: EdgeInsets.all(20),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
             ),
             onPressed: () {

             },
             child: const Text('TOAST', style: TextStyle(fontSize: 30))
          ),
        ),

    ),

  );

}