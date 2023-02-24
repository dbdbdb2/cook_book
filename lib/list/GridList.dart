import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: GridList()));

class GridList extends StatefulWidget {
  const GridList({Key? key}) : super(key: key);

  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('GridList', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),   
          
      body: Container(
        padding: const EdgeInsets.all(5),
        
        child: GridView.count(crossAxisCount: 3,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('A', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('B', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('C', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('D', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('E', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('F', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('G', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('H', style: TextStyle(fontSize: 35))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Text('I', style: TextStyle(fontSize: 35))),
              ),
            ),
          ],

        )
        
      ),
        
    ),
    
  );
  
}
