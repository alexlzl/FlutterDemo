//var say = (String str) {
//  print(str);
//  return str;
//};
//函数变量定义在方法里面，定义外面有警告
void main() {
  var say = (String str) {
    print(str);
    return str;
  };
 print(say("alex"));
}
