import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Extended Col', style: TextStyle(fontSize: 35),),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        )),
      body: Center(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'First widget',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'Second widget',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.green,
                  width: 200,
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Third widget',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.red,
                height: 100,
                width: 200,
              ),
            ],
          )),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
