//demo variables

abstract class DemoParent {
  DemoParent();
  factory DemoParent.test() {
    return Demo();
  }
  void printHello() {
    print('hello');
  }
}

class Demo extends DemoParent {
  String? _name;
  Demo() {
    print('init demo');
  }
  set name(String? value) {
    print('set name');
    _name = value;
  }

  String? get name => _name;
}

bool testFunc(String x, [String? b]) {
  print(b);
  return b == null;
}

void main(List<String> arguments) {
  late DemoParent demo = DemoParent.test();
  print('1');
  demo.printHello();
  print(2e+2);
  demo as Demo;
  demo._name = 'test';
  print(demo._name);
}
