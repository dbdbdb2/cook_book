import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final items = List<String>.generate(20, (i) => 'Item ${i++}');

  @override
  Widget build(BuildContext context) {
    const title = 'Swipe To Remove';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: const Text(title, style: TextStyle(fontSize: 35),),
        ),

        body: ListView.builder(
          itemCount: items.length,

          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(

              // Each Dismissible must contain a Key that allows to identify widgets
              key: Key(item),

              // Provide a function that tells the app
              // what to do after an item has been swiped
              onDismissed: (direction) {

                // Remove the item from the list
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$item removed', style: TextStyle
                      (fontSize: 15)))
                );
              },
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(item),
              ),
            );
          },
        ),
      ),
    );
  }
}