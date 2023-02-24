import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: GridList()));

class GridList extends StatefulWidget {
  const GridList({Key? key}) : super(key: key);

  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {

  Widget build(BuildContext context) => MaterialApp(

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
                child: Center(child: const Icon(Icons.rocket, size: 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Icon(Icons.cake_rounded, size: 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Icon(Icons.airplanemode_on_outlined, size: 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                  child: Center(child: const Image(image: NetworkImage('http://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/relieved-face.png'))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Image(
                      image: NetworkImage('http://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/smiling-face.png')
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[500],
                child: Center(child: const Image(
                    image: NetworkImage('https://www.washingtonpost.com/wp-apps/imrs.php?src=http://www.washingtonpost.com/news/morning-mix/wp-content/uploads/sites/21/2015/11/face-with-tears-of-joy.png&w=1200')
                ),),
              ),
            ),

          ],

        )
        
      ),
        
    ),
    
  );
  
}
