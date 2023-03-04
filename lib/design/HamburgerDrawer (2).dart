import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text(title, style: TextStyle(fontSize: 40),)
      ),
      body: const Center(
        child: Text('drawer !', style: TextStyle(fontSize: 55),),
      ),
      drawer: Drawer(

        // Add a ListView to the drawer.
        // This ensures the user can scroll through the options
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,

          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Drawer Header', style: TextStyle(fontSize: 35),),
            ),
            ListTile(
              title: const Text('Item 1', style: TextStyle(fontSize: 25)),
              onTap: () {
                // ...

                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2', style: TextStyle(fontSize: 25)),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 3', style: TextStyle(fontSize: 25)),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 4', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 5', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 6', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 7', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 8', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 9', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 10', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 11', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 12', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Item 13', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Item 14', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Item 15', style: TextStyle(fontSize: 25),),
              onTap: () {
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}