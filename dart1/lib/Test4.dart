class Test4 {
  String a, b;

  Test4(String a, this.b);
}

void main() {
  //null
  //2
  Test4 test4 = new Test4("1", "2");
  print(test4.a);
  print(test4.b);
}
