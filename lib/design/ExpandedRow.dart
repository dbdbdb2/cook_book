import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text('Expanded Row', style: TextStyle(fontSize: 35),),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          )),
      body: Center(
          child: Row(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'First widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.blue,
                height: 200,
                width: 100,
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'Second widget',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.amber,
                  height: 200,
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Third widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.pink,
                height: 200,
                width: 100,
              ),
            ],
          )),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
