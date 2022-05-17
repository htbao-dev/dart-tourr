class MyClass {
  late String name;
  MyClass() {
    print('MyClass constructor');
  }
  void greet() {
    name = 'Bao';
    print('Hello, $name');
  }
}

void main(List<String> args) {
  // MyClass myClass = MyClass();
  // myClass.greet();

  late MyClass myClass2 = MyClass();
  print('myclass2 was created');
  myClass2.greet();
}
