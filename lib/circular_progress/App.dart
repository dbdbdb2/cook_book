import 'package:flutter/material.dart';

import 'CircularProgress.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: CircularProgress()

  );

}