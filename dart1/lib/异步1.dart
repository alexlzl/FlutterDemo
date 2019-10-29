/*
https://juejin.im/post/5c90c2cae51d45509256ba5f

创建一个异步函数很简单，只需要给函数加个 async 关键字就行。
其中，范型 T 具体是什么，取决于你的异步函数 return 的是什么。
如果没有 return，T 就是 null。你可以在通过 Future 的 then() 切换到同步中，然后获取返回值。
 */

Future<Foo> login() async {
  return Foo();
}

class Foo {}

/*
异步库里有一个概念就叫 Future，future是基于观察者模式。类似于JavaScript里的Rx和Promise，如果属性这两个，就很容易理解future。

简单来说，Future定义了未来将要发生的事，例如：未来我们会得到一个值。

Future 是泛型，Future<T>，需要指定未来返回值的类型。如：



 */
main(List<String> args) {
  getAJoke().then((value) {
    print(value);
  }).catchError((error) {
    print('Error');
  });

  getAJoke1().then((value) {
    print(value);
  }).catchError((error) {
    print('Error');
  });
}

Future<String> getAJoke() {
  return new Future<String>(() {
    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a joke";
  });
}

/*
这里定义了一个getAJoke函数，返回值类型是Future<String>，函数内new了一个Future，Future构造函数接受一个返回T类型值的函数（这里是匿名函数），匿名函数返回的值就是future的返回值。

在main里调用getAJoke函数，并在then里定义里回调函数，当future有返回值的时候，回调函数被调用。这里还增加了catchError来处理Future执行时发生的错误
 */
Future<String> getAJoke1() {
  return new Future<String>(() {
    //Do a long running task. E.g. Network Call.
    //Return the result
    throw new Exception('No joke for you!');
//    return "This is a joke";
  });
}
