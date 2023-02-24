import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Confirmation", style: TextStyle(fontSize: 35),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

              onPressed: () async {
                final ConfirmAction action = (await _asyncConfirmDialog(context)) as ConfirmAction;
                print("Confirm Action $action" );
              },
              child: const Text(
                "Show Confirmation Alert",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
enum ConfirmAction { Cancel, Accept}
Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {

      return AlertDialog(
        title: Text('Delete ?', style: TextStyle(fontSize: 35),),
        content: const Text(
            'Delete from your device.', style: TextStyle
          (fontSize: 20),),
        actions: [
          ElevatedButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          ElevatedButton(
            child: const Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Accept);
            },
          )
        ],
      );
    },
  );
}