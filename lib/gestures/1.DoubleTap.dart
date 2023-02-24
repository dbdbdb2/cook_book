import 'dart:math';
import 'package:flutter/material.dart';

class DoubleTap extends StatefulWidget {

  const DoubleTap({Key? key}) : super(key: key);

  State<DoubleTap> createState() => _DoubleTapState();

}

class _DoubleTapState extends State<DoubleTap> {
  Color color = Colors.yellow;

  Widget build(BuildContext context) {

    return GestureDetector(
      onDoubleTap: (){
        setState(() {
          color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      child: Card(
        child: const SizedBox(
          height: 200,
          width: 200,
        ),
        color: color,
      ),
    );
  }
}