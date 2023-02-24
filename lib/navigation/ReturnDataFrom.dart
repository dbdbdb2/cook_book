import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Returning Data', style: TextStyle(fontSize: 35)),
      ),

      body: const Center(
        child: SelectionButton(),
      ),

    );
  }
}

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {

  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
      ),
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: const Text('Pick an option !', style: TextStyle(fontSize: 30)),
    );

  }

  // A method that launches the SelectionScreen and awaits
  Future<void> _navigateAndDisplaySelection(BuildContext context) async {

    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );

    // When a BuildContext is used from a StatefulWidget, the mounted property
    // must be checked after an asynchronous gap.
    if (!mounted) return;

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                ),
                onPressed: () {
                  Navigator.pop(context, 'Yep !');
                },
                child: const Text('Yep !', style: TextStyle(fontSize: 30)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                ),
                onPressed: () {
                  Navigator.pop(context, 'Nope.');
                },
                child: const Text('Nope.', style: TextStyle(fontSize: 30)),
              ),
            )

          ],
        ),
      ),
    );
  }
}