// ignore_for_file: unnecessary_type_check

void myFunction() {
  print('myFunction');
}

class MyClass {
  int? myMethod() {
    return 123;
    // return null;
  }
}

void main(List<String> args) {
  var obj1 = 1;
  var obj2 = '1';
  var obj3 = myFunction;
  var myClass = MyClass();

  print(obj1 is Object);
  print(obj2 is Object);
  print(obj3 is Object);
  print(myClass is Object);
  print(null is Object);
  print('type of null: ${null.runtimeType}');

  int? nullable;
  nullable = myClass.myMethod();
  try {
    var isEven = nullable!.isEven;
    // var isEven = nullable?.isEven;
    print('obj5 is even: $isEven');
  } catch (e, s) {
    print(e);
    print(s);
  }
}
