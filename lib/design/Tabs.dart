import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        // tab's num
        length: 4,

        child: Scaffold(

          appBar: AppBar(
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.train)),
              ],
            ),
            title: const Text('VEHICLES', style: TextStyle(fontSize: 35),),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car, size: 90),
              Icon(Icons.directions_transit, size: 90),
              Icon(Icons.directions_bike, size: 90),
              Icon(Icons.train, size: 90),
            ],
          ),
        ),
      ),
    );
  }