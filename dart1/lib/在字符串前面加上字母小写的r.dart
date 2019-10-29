main() {
  /*
  加r前 转义字符串有效果
  In a raw string, not even 
 gets 	 special treatment.
   */
  var s1 = 'In a raw string, not even \n gets \t special treatment.';
  print(s1);
 /*
 加r 后转义字符原样输出
 In a raw string, not even \n gets \t special treatment.
  */
  var s2=r"In a raw string, not even \n gets \t special treatment.";
  print(s2);
}
