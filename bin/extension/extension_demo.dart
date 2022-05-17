extension Exten1 on int {
  int pow(int n) {
    int result = 1;
    for (int i = 0; i < n; i++) {
      result *= this;
    }
    return result;
  }
}

extension Exten2 on int {
  int pow(int n) {
    int result = 1;
    for (int i = 0; i < n; i++) {
      result *= this;
    }
    return result;
  }
}
