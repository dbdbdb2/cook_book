import 'package:flutter/material.dart';

Card miCardImage() => Card(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  margin: EdgeInsets.all(15),
  elevation: 10,
  child: Column(
    children: <Widget>[
      Image(
        image: NetworkImage(
            'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Text('Lake', style: TextStyle(fontSize: 20)),
      ),
    ],
  ),
);