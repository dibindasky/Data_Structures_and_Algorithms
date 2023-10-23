void main(){
  String s='aabbccdff';
  Set<String> a={};
  List<String> arr=[];
  for(int i=0;i<s.length;i++){
    if(a.contains(s[i])){
      arr.add(s[i]);
    }
    a.add(s[i]);
  }
  arr.forEach((element) {
    a.remove(element);
  });
  print(a);
}