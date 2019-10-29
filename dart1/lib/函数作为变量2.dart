void main() {
  new Test().test();
  new Test().test1();
}

class Test {
  var s = (String str) {
    return str;
  };

  void test() {
    print(s("alex"));
  }

  void test1() {
    print(s("alex1"));
  }
}
