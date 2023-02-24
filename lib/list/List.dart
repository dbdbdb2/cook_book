import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    final appTitle = 'Basic List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle, style: TextStyle(fontSize: 35)),
        ),

        body: ListView(
          children: const [

            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.map, size: 40),
              title: Text('Map', style: TextStyle(fontSize: 35)),
              trailing: Icon(Icons.car_crash, size: 40),
            ),

            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.photo_album, size: 40),
              title: Text('Album', style: TextStyle(fontSize: 35)),
              subtitle: Text('Subtitle', style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.sports_volleyball_rounded, size: 40),

            ),

            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.phone, size: 40),
              title: Text('Phone', style: TextStyle(fontSize: 35)),
              trailing: Icon(Icons.beach_access, size: 40),

            ),

            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.contacts, size: 40),
              title: Text('Contact', style: TextStyle(fontSize: 35)),
              subtitle: Text('Subtitle', style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.rocket, size: 40),

            ),

            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text('Settings', style: TextStyle(fontSize: 35)),
              trailing: Icon(Icons.rocket_launch, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}