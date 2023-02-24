import 'package:cook_book/actions/Route1.dart';
import 'package:flutter/material.dart';

class R1 extends StatelessWidget {
  const R1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>  MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ROUTE 1', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back', style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    ))
  );

}
