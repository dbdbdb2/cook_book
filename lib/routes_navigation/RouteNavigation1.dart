import 'package:flutter/material.dart';

class RouteNavigation1 extends StatelessWidget {
  const RouteNavigation1({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RouteNavigation1', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: Center(
            child: ElevatedButton(
              onPressed: () {
                null;
              },
              child: const Text('back'),
            ),
          ),
        ),
      ),

    )),

  );

}
