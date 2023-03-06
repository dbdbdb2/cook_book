import 'package:flutter/material.dart';

import 'export.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: Column(
            children: [
              Route1(),
              Route2(),
              Route3(),
              Route4(),
              Route5(),
              Route6(),
              Route7(),
            ],
          ),
        ),
      ),

    )),

  );

}
