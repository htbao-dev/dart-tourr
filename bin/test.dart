import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'dart_tour.dart';

extension on String {
  void myFunc() {
    print('myFunc');
  }
}

class MyMixin {
  void myFunc() {
    print('myFunc');
  }
}

class MyClass with MyMixin {}

Future<void> test() async {
  Future.delayed(Duration(seconds: 2), () {
    print('Hello, world!');
  });
  await Future.delayed(Duration(seconds: 5));
  print('10s');
  Future.delayed(Duration(seconds: 5)).then((value) => print('5s'));
  print('end');
}

void main() async {
  // Read some data.
  final jsonData = await _parseInBackground();
  -1.abs();

  // Use that data
  print(jsonData);
}

// Spawns an isolate and waits for the first message
Future<String> _parseInBackground() async {
  final p = ReceivePort();
  var i2 = await Isolate.spawn(_readAndParseJson1, p.sendPort);
  String s = '123';
  p.listen((message) {
    print(message);
    if (message == 2) {
      p.close();
    }
  });

  return s;
}

Future<void> _readAndParseJson1(SendPort p) async {
  await Future.delayed(Duration(seconds: 1));
  p.send('jsonData');
  Isolate.exit(p, 2);
}
