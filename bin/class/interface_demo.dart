class Bird {
  void fly() {
    print('Bird is flying');
  }
}

class Penguin implements Bird {
  @override
  void fly() {
    print('Penguin can not fly');
  }
}
