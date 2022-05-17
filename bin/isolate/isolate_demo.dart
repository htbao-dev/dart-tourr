import 'dart:async';
import 'dart:isolate';

void main() async {
  var result = await _doSomethingInBackground();
  print(result);
}

Future<String> _doSomethingInBackground() async {
  final p = ReceivePort();
  await Isolate.spawn(
    _fetchData,
    p.sendPort,
  );
  final result = await p.first;
  p.close();
  return result;
}

Future<void> _fetchData(SendPort p) async {
  final data = 'My name is Bao';
  await Future.delayed(Duration(seconds: 1));
  Isolate.exit(p, data);
}
