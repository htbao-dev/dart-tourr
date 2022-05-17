class MyClass {
  // static const String myName = 'Bao';
  MyClass();
  int myMethod() {
    return 2;
  }
}

void main(List<String> args) {
  final myName = 'Bao';
  const pi = 3.14;

  // myName = 'changed';
  // pi = 3.15;
  var myClass = MyClass();
  // const obj = myClass.myMethod();

  final list1 = [];
  const list2 = [];
  list1.add(1);
  // list2.add(2);
  print(list1);
  print(list2);
}
