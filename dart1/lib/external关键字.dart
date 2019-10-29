/*
查看源码时看到了external bool identical(Object a, Object b)，发现关联不到实现，随手查查资料发现这是个复杂的问题 - -

简单来说就是只声明方法，具体实现由外部提供，通常是不同的平台 runtime，类似 Java 的 native 方法。

external 就用来表明方法的实现不在此处，需要到相应的运行环境下去找
 */

void main() {
  print(test());
}

external String test();
