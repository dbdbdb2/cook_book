import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    final appTitle = 'Basic Alert';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle, style: TextStyle(fontSize: 35),),
        ),
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {

  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            textStyle: TextStyle(fontSize: 30)),
          child: Text('Show alert'),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  Widget okButton = ElevatedButton(
    child: Text("OK", style: TextStyle(fontSize: 15),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    title: Text("Simple Alert", style: TextStyle(fontSize: 40, color: Colors.red)),
    content: Text("Alert Message.", style: TextStyle(fontSize: 25),),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}