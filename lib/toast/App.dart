import 'package:flutter/material.dart';

import 'CreateToast.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      CreateToast()
    ),

  );

}

