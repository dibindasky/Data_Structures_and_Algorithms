import 'dart:io';

void main(){
  String msg='aabbbbccc';
  reducer(msg);
}

void reducer(String str){
  int count;
  // str=sort(str);
  for(int i=0;i<str.length-1;i++){
    count=1;
    int j=i+1;
    while(str[i]==str[j]){
      count++;
      j++;
    }
    stdout.write('$count${str[i]}');
    i=i+count;
  }
}
String sort(String str){
  String str1='';
  for(int i=0;i<str.length;i++){
    str1+=str[i];
    for(int j=i;j<str.length;j++){
      if(str[j]==str[i]){
        str1+=str[j];
      }
    }
  }
  return str1;
}