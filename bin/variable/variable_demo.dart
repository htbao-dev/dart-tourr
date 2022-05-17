void main(List<String> args) {
  var str = 'Hello, world!';
  // str = 1;
  var str2;
  str2 = 'Hello, world!';
  str2 = 1;
  print(str.runtimeType);
  print(str2.runtimeType);

  late String a;
  String? b;
  a = 'Hello, world!';
  print(a);
  print(b);
}
