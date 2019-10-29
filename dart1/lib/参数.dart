
void main(){
//  test(_);
int m(int a){
  return a;
}
test1(m);
}

void test(String str){
  print("test");
}

void test1(int f(int a)){
   print(f(100));
}