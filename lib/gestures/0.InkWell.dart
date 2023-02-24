import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: InkWellWidgetTutorial()));

class InkWellWidgetTutorial extends StatefulWidget {
  const InkWellWidgetTutorial({Key? key}) : super(key: key);

  @override
  _InkWellWidgetTutorialState createState() => _InkWellWidgetTutorialState();
}

class _InkWellWidgetTutorialState extends State<InkWellWidgetTutorial> {
  String title = 'InkWell Widget';

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(fontSize: 35),),
      ),

      body: Center(

        // InkWell -> creates ripple effect
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Butt tapped",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}