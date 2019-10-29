/*
接下来我们重点说下几个细节。

1、第一个细节，就是方法当做参数传递的时候，只需要传递方法名即可，不需要带上方法的括号。具体请看我们的printElement方法是如何定义，以及是如何传递给list.forEach方法的。

2、方法作为参数的时候传递给其他方法的时候，不会立即执行。

方法当做参数传递的时候，方法名表示该方法的引用，这个引用当做参数传递的时候不会立即执行，只会再调用的时候执行。

3、入参方法在被实际调用时，会添加括号，当做正常的方法调用。

具体请看printElement方法当做参数传递给list.forEach方法的过程，以及list.forEach方法内部是如何调用入参方法f的
好了，我们应该已经看到方法名（不带括号）和方法执行语句（带括号）的区别了。

结论如下：

方法名（不带括号）作为参数传递给其他方法时，传递的是方法的引用，该方法不会立即执行。
方法执行语句（带括号）作为参数传递给其他方法时，该方法会立即执行，我们传递过去的是方法的返回值。
 */

/*
 * 定义方法 
 */
int add(int a, int b) {
  return a + b;
}

/*
定义方法作为参数的方法
 */
int test(int a, int b, Function operation) {
  return operation(a, b);
}

int test1(void entryPoint(String message), String name) {}

test2(String message) {}

main() {
  print(test(5, 2, add));
  test1(test2, "name");
}
