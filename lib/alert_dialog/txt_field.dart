import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: TextFieldAlertDialog(),
    );
  }
}
class TextFieldAlertDialog extends StatelessWidget {
  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField AlertDialog', style: TextStyle(fontSize:20),),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                hintText: "TextField in Dialog",
                hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),
            actions: [
              new ElevatedButton(
                child: new Text('SUBMIT', style: TextStyle(fontSize: 25),),
                onPressed: () => Navigator.pop(context),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TextField AlertDialog', style: TextStyle(fontSize: 35)
        ),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
          child: Text(
            'Show Alert',
            style: TextStyle(fontSize: 40.0),),

          onPressed: () => _displayDialog(context),
        ),
      ),
    );
  }
}