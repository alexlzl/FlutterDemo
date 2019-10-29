/*
上面的代码中，在main的大括号前 增加了async 关键字，在调用getAJoke前增加了await关键字。
这样代码直到getAJoke有返回值时才会继续向下执行。
同时调用的代码段放在了try/catch里，以便处理错误。
需要说明的是，await必须放在有async 标识的函数里，才能执行。
 */
main(List<String> args) {
  foo();
  print("end===========");
}

foo() async {
  try {
    String result = await getAJoke();
    print(result);
  } catch (e) {
    print(e);
  }
  print('Another print statement.');
}

Future<String> getAJoke() {
  return new Future<String>.delayed(new Duration(milliseconds: 2000), () {
    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a joke";
  });
}
