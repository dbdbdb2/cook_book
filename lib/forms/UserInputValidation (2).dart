import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle, style: TextStyle(fontSize: 35),),
        ),
        body: const CustomFormm(),
      ),
    );

  }

}

// Create a Form widget.
class CustomFormm extends StatefulWidget {
  const CustomFormm({super.key});

  CustomFormmState createState() {
    return CustomFormmState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class CustomFormmState extends State<CustomFormm> {

  // Create a global key that identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    // Build a Form widget using the _formKey created
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 400,

            child: TextFormField(
              decoration: InputDecoration(labelStyle: TextStyle(fontSize: 20)),
              // The validator receives the text the user has entered (value)
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: ElevatedButton(
                onPressed: () {

                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit', style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}