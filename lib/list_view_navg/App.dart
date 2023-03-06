import 'package:flutter/material.dart';

import 'ListViewNav.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: ListViewNav()
  );

}
