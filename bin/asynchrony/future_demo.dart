Future<int> demoFuture() async {
  await Future.delayed(Duration(seconds: 3));
  return 10;
}

void main(List<String> args) async {
  try {
    var result = await demoFuture();
    print(result);
  } catch (e) {
    print(e.toString());
  }
  print('await Future');

  // demo Future.then
  demoFuture().then((value) => print(value)).onError((error, stackTrace) {
    print(stackTrace);
  });
  print('Future.then');
}
