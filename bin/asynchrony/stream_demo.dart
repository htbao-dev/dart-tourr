import 'dart:async';

Stream<int> test() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main(List<String> args) async {
  Stream<int> stream = test();
  // await for (final i in stream) {
  //   print(i);
  // }
  // print('end demo');

  // demo listen

  stream.listen((event) {
    print(event);
  });
  print('end demo');

  // var broadcastStream = stream.asBroadcastStream();
  // broadcastStream.listen((event) {
  //   print(event);
  // });
  // broadcastStream.listen((event) {
  //   print('listen 2: $event');
  // });
}
