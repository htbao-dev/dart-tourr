class MyClass {
  const MyClass();
  int myMethod() {
    return 0;
  }
}

void main(List<String> args) {
  const myClass1 = const MyClass();
  const myClass2 = const MyClass();
  var myClass3 = MyClass();
  print(identical(myClass1, myClass2));
  print(identical(myClass1, myClass3));
}
