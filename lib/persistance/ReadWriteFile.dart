
// path_provider

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

// GET PATH TO STORE THE FILE
Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;

  }

// REFERENCE TO THE LOCATION
Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/counter.txt');
}


// WRITE
_write(String text) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/file.txt');
  await file.writeAsString(text);
}


// READ
Future<String?> _read() async {
  String? text;

  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/file.txt');
    text = await file.readAsString();
  }

  catch (e) {
    print("Couldn't read the file");
  }

  return text;

}

