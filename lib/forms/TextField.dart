import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle, style: TextStyle(fontSize: 35),),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),

          child: TextField(
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.sentences,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: Colors.green),

            decoration: InputDecoration(
              icon: const Icon(Icons.person),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 5, color: Colors.black)
              ),
              hintText: 'User',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),

          child: TextFormField(
            controller: TextEditingController(),
            autocorrect: true,
            obscureText: true,
            textAlign: TextAlign.end,
            style: const TextStyle(fontSize: 25, color: Colors.black),
            decoration: const InputDecoration(
              suffixIcon: const Icon(Icons.password),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 5, color: Colors.red)
              ),
              labelText: 'Password',
            ),
          ),
        ),
      ],
    );
  }
}