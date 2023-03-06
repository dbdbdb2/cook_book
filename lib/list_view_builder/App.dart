import 'package:flutter/material.dart';

import 'ListViewBuilder.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ListViewBuilder());
  }
}


