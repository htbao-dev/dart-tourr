class UnderScore {
  void _myName() {
    print('Bao');
  }

  void yourName() {
    print('your name');
  }
}

class Demo {
  void test() {
    var myName = UnderScore();
    myName._myName();
    myName.yourName();
  }
}
