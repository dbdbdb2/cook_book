import 'package:flutter/material.dart';


class CircularProgress extends StatefulWidget {
  const CircularProgress({super.key});

  State<CircularProgress> createState() =>
      _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> with TickerProviderStateMixin {

  late AnimationController controller;

  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: false);
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Circular progress indicator',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            CircularProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Circular progress indicator',
            ),
          ],
        ),
      ),
    );
  }
}