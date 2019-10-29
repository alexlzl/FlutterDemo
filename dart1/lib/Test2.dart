void main(){
  String  str=r"abcd\n";
  if(str.endsWith(r"\n")){
    print(str);
  }
  String str1="abc\\n";
  print(str1);
  String str2="ab\nc";
  print(str2);
}