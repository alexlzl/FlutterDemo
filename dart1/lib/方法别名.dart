/*
https://juejin.im/post/5d25a6d8f265da1b9163bc7e
 */

typedef int Compare(Object a, Object b);

class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

int sort(_, Object b) {}

main() {
  /*
  结论如下：
方法名（不带括号）作为参数传递给其他方法时，传递的是方法的引用，该方法不会立即执行。
方法执行语句（带括号）作为参数传递给其他方法时，该方法会立即执行，我们传递过去的是方法的返回值
   */
  SortedCollection collection = new SortedCollection(sort);
  /*
   // 我们只知道 compare 是一个 Function 类型，
  // 但是不知道具体是何种 Function 类型？
   */
  assert(collection.compare is Function);
  assert(collection.compare is Compare);
}
