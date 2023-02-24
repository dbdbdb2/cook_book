import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FromAssets()));

class FromAssets extends StatefulWidget {
  const FromAssets({Key? key}) : super(key: key);

  @override
  State<FromAssets> createState() => _FromAssetsState();
}

class _FromAssetsState extends State<FromAssets> {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home: Scaffold(
      backgroundColor: Colors.green[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('FromAssets', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.green[900],
      ),   
          
      body: Container(
        padding: const EdgeInsets.all(10),
        
        child: Center(
          child: Image.asset('image/img_2.png'),
        ),
        
      ),
        
    ),
    
  );
  
}
