import 'package:flutter/material.dart';

Card miCard() =>
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(15),
      elevation: 10,

      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Title', style: TextStyle(fontSize: 35)),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () => {}, child: Text('Accept')),
              TextButton(onPressed: () => {}, child: Text('Cancel'),
                  style: TextButton.styleFrom(foregroundColor: Colors.red)
              )
            ],
          )
        ],
      ),
    );