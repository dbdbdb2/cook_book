import 'dart:math';
import 'package:flutter/material.dart';

class LongPress extends StatefulWidget {
  const LongPress({Key? key}) : super(key: key);

  State<LongPress> createState() => _LongPressState();
}

class _LongPressState extends State<LongPress> {
  Color color = Colors.yellow;
  bool makeCircular = false;

  Widget build(BuildContext context) => GestureDetector(

    onLongPress: () {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      setState(() {
        makeCircular = !makeCircular;
      });
    },
    child: Card(
      shape: makeCircular? const CircleBorder() : const RoundedRectangleBorder(),
      child: const SizedBox(
        height: 200,
        width: 200,
      ),
      color: color,
    ),

  );
  
}
