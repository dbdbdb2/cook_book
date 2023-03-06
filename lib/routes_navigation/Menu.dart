import 'package:flutter/material.dart';

import 'RouteNavigation1.dart';
import 'RouteNavigation2.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Menu', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Column(

          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => const RouteNavigation1()))
                );
              },
              child: const Text('RouteNavigation1',
                style: TextStyle(fontSize: 30, backgroundColor: Colors.blue)
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => const RouteNavigation2()))
                );
              },
              child: const Text('RouteNavigation2', style: TextStyle
                (fontSize: 30)
              ),
            ),
          ],

        ),
      ),

    )),

  );

}
