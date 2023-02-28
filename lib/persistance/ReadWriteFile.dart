
// path_provider

import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'dart:async';


// WRITE
_write(String text) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/my_file.txt');
  await file.writeAsString(text);
}

// READ
Future<String?> _read() async {
  String? text;

  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    text = await file.readAsString();
  }

  catch (e) {
    print("Couldn't read the file");
  }

  return text;

}

