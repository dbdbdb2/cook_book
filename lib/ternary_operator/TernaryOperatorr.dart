import 'package:flutter/material.dart';

class TernaryOperatorr extends StatefulWidget {
  const TernaryOperatorr({Key? key}) : super(key: key);

  State<TernaryOperatorr> createState() => _TernaryOperatorrState();
}

class _TernaryOperatorrState extends State<TernaryOperatorr> {

  bool isLoading = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLoading ?
            CircularProgressIndicator() : Text("Loading Completed"),
            SizedBox(height: 100),
            Text("Click the FAB", style: TextStyle(fontSize: 35))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.done, size: 40),
        onPressed: () {
          setState(() => isLoading = !isLoading);
        },
      )
    );
  }
}
