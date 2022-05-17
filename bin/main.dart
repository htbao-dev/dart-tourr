class DemoConst {
  final String a = 'a';
  const DemoConst();
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++;
    yield 2;
  }
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}

void main(List<String> args) {
  Iterable<int> list = naturalsTo(10);
  print(list);
  List<int> a = [1, 2, 3];
  Iterable k = a;
  print(k);
  asynchronousNaturalsTo(10).listen((event) {
    print(event);
  });
}
