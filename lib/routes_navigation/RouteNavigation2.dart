import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class RouteNavigation2 extends StatelessWidget {
  const RouteNavigation2({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RouteNavigation2', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
            ),

            onPressed: () => Navigator.pop(context),

            child: const Text('back',
              style: TextStyle(fontSize: 30, backgroundColor: Colors.black)
            ),
          ),

        ),
      ),

    )),

  );

}
