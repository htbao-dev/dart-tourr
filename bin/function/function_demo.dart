// ignore_for_file: prefer_function_declarations_over_variables

String myFuncion() {
  return 'myFuncion';
}

myFunction2() {
  return 'myFunction2';
}

String myFunction3() => 'myFunction3';

Function myFunction4 = () {
  return 'myFunction4';
};

Function myFunction5 = () => 'myFunction5';

void myFunction6(String a, int b, [String c = 'c', bool? d]) {
  print('a: $a, b: $b, c: $c, d: $d');
}

void myFunction7(String a, int b, {String c = 'c', bool? d, required int e}) {
  print('a: $a, b: $b, c: $c, d: $d, e: $e');
}

void main(List<String> args) {
  myFunction6('a', 2);
}
