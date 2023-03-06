import 'package:flutter/material.dart';

import 'export.dart';

class Cards extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('CARDS', style: TextStyle(fontSize: 35)),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          miCard(),
          miCardImage(),
          miCardDesign(),
          miCardImageCarga(),
        ],
      ),
    );
  }
}