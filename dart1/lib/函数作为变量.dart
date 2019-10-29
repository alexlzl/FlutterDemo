//void main(){
//  say("hi world");
//}
//void  say= (String str){
//  print(str);
//  return str;
//};
import 'dart:async';

void foo() {}
void main() {

  // BOTH: () => Null
  var a = (String s) {
    print(s);
    return s;
  };
  print(a("a"));
  print(a.runtimeType);

  // BOTH: () => void
  var b = () => foo();
  print(b.runtimeType);

  // BOTH: () => Null
  var c = () {return ;};
  print(c.runtimeType);

  // BOTH: () => void
  var d = () {return foo();};
  print(d.runtimeType);

  // BOTH: () => Future<Null>
  var e = () async {};
  print(e.runtimeType);

  // BOTH: () => Future<Null>
  var f = () async { return; };
  print(f.runtimeType);

  // CFE: Future<dynamic>
  // DDC: Future<Null>
  var future = new Future.value(1).then((_) {
  });
  print(future.runtimeType);
}
