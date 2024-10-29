
import 'dart:io';

class Replacer{

  List replace(String str,int n,int l){
    int i=0;
    var v;
    List<String> str1=[];
    while(i<l){
      v=str.codeUnitAt(i);
      v=v+n;
      if(v>122){
        v=96+(v%26)-18;
      }
      str1.add(String.fromCharCode(v));
      i++;
    }
    return str1;
  }
}

void main(){
  String? msg='azzzzyyyy';
  Replacer r=Replacer();
  List result=r.replace(msg,2,msg.length);
  stdout.write('$msg   -------   ');
  result.forEach((element)=>stdout.write(element));
}