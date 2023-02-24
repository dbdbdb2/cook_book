import 'package:flutter/material.dart';
import '1.Pop.dart';

void main() => runApp(const MaterialApp(home: Main()));

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                ),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => const R1()))
                  );
                },
                child: const Text('ROUTE 1', style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),

      ),

    ),

  );

}
