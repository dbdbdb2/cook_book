import 'dart:math';

import 'package:flutter/material.dart';

class Scale extends StatefulWidget {
  const Scale({Key? key}) : super(key: key);

  State<Scale> createState() => _ScaleState();
}

class _ScaleState extends State<Scale> {
  double _scaleFactor = 0.5;
  double _baseScaleFactor = 0.5;
  Color bgColor = Colors.yellow;


  Widget build(BuildContext context) => GestureDetector(

    onScaleStart: (details) {
      _baseScaleFactor = _scaleFactor;
    },

    onScaleUpdate: (details) {
      setState(() {
        _scaleFactor = _baseScaleFactor * details.scale;
        bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  }
      );
    },

    onScaleEnd: (details) {
      // return to initial scale
      _scaleFactor = _baseScaleFactor;
    },

    child:
    Transform.scale(
      scale: _scaleFactor,
      child:
      Card(
        child: const SizedBox(
          height: 200,
          width: 200,
        ),
        color: bgColor,
      ),
    ),
  );


}
