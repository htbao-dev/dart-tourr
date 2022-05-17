import '../test.dart';

class MyClassMixin {
  void myMethod() {
    print('MyClass::myMethod()');
  }
}

mixin MyMixin on MyClass {
  void myMixinMethod() {
    print('MyMixin::myMethod()');
  }
}

class MyClass with MyClassMixin {
  void myOtherMethod() {
    print('MyOtherClass::myOtherMethod()');
  }
}

// class Test with MyMixin{

// }

void main(List<String> args) {
  var myClass = MyClass();
  myClass.myMethod();
  myClass.myOtherMethod();

  MyClassMixin myMixin = MyClassMixin();
  myMixin.myMethod();
}
