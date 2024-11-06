class Solution {
  String longestCommonPrefix(List<String> strs) {
    String long = '';
    int f = 0;
    for (int i = 0; i < strs[0].length; i++) {
      String sub = strs[0].substring(0, i + 1);
      for (int j = 1; j < strs.length; j++) {
        if (strs[j].isEmpty || strs[j].length < sub.length) {
          f = 1;
          break;
        }
        String chq = strs[j].substring(0, i + 1);
        if (sub != chq) {
          f = 1;
          break;
        }
      }
      if (f == 1) break;
      long = long.length < sub.length ? sub : long;
    }
    return long;
  }
}
