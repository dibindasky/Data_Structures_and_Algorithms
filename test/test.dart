class Solution {
   strStr(String haystack, String needle) {
    
  }
}

void main(){
  List<int> a=[1,2,5,1,1,2,10,2,2,3];
  List<int> b=[];
  for(int i=0;i<a.length;i++){
    b.add(a[i]);
    if(a[i]%5==0){
      i=i+2;
    }
  }
  print(b);
}