import 'package:cook_book/components/routes/GameListView.dart';
import 'package:flutter/material.dart';

import 'CardRoute.dart';

class AlertRoute extends StatelessWidget {
  const AlertRoute({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: const CardRoute(),
    routes: {
      'MainListView' : (context) => MainListView(),
      'MainListView' : (context) => MainListView(),
      'AlertRoute' : (context) => AlertRoute(),
      'CardRoute' : (context) => CardRoute(),
    }

  );

}
