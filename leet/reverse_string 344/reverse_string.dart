class Solution {
  void reverseString(List<String> s) {
    for(int i=0;i<s.length/2;i++){
      String temp=s[i];
      s[i]=s[s.length-1-i];
      s[s.length-1-i]=temp;
    }
  }
}