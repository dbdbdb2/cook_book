import 'package:flutter/material.dart';
import '1.DoubleTap.dart';
import '1.LongPress.dart';
import '1.TapFav.dart';
import '1.Scale.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {


    return Scaffold(
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              DoubleTap(),
              const SizedBox(height: 20),
              FavIcon(),
              const SizedBox(height: 20),
              LongPress(),
              const SizedBox(height: 20),
              Scale(),
            ],
          ),
        ),
    );
  }
}