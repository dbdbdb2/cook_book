import 'package:flutter/material.dart';
import 'Route1.dart';
import 'Route2.dart';

void main() => runApp(const MaterialApp(

    debugShowCheckedModeBanner: false,
    home: RoutesMenu()));

class RoutesMenu extends StatefulWidget {
  const RoutesMenu({Key? key}) : super(key: key);

  @override
  State<RoutesMenu> createState() => _RoutesMenuState();
}

class _RoutesMenuState extends State<RoutesMenu> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('RoutesMenu', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => const Route1()))
                  );
                },
                child: const Text('Route1', style: TextStyle(fontSize: 40)),

              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => const Route2()))
                  );
                },
                child: const Text('Route2', style: TextStyle(fontSize: 40)),
              ),

            ],
          ),
        ),

      ),

    ),

  );

}
