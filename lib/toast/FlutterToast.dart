import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: (
      Toast()
    ),

  );

}

class Toast extends StatefulWidget {
  const Toast({Key? key}) : super(key: key);

  State<Toast> createState() => _ToastState();
}

class _ToastState extends State<Toast> {

  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.blue[200],

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Toast', style: TextStyle(fontSize: 40)),
        backgroundColor: Colors.blue[900],
      ),

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

              onPressed: () => Fluttertoast.showToast(
                msg: "DBG",
                toastLength: Toast.,
              ),

              child: const Text('TOAST', style: TextStyle(fontSize: 30)),

            )
          ],
        ),



      ),

    ),

  );

}

/*

      body: Container(
        padding: const EdgeInsets.all(10),

        child: Center(

        ),

      ),

    ),

  );

}
*/
