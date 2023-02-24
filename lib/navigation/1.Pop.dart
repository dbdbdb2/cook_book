import 'package:flutter/material.dart';

class R1 extends StatelessWidget {
  const R1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>  MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ROUTE 1', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back', style: TextStyle(fontSize: 60)),
            ),
          ],
        ),
      ),
    ))
  );

}
