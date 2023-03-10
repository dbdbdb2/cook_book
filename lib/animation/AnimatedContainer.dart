import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {

  // Update these properties when the user taps the fab.
  double _width = 50;
  double _height = 50;

  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('AnimatedContainer', style: TextStyle(fontSize: 35),),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,

            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),

            // Define how long the animation should take.
            duration: const Duration(seconds: 3),

            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            // Use setState to rebuild the widget with new values.
            setState(() {

              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}