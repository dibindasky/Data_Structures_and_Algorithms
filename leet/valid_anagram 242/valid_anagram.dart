class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    Map<String, int> sMap = {}, tMap = {};
    for (var i = 0; i < s.length; i++) {
      sMap[s[i]] = (sMap[s[i]] ?? 0) + 1;
      tMap[t[i]] = (tMap[t[i]] ?? 0) + 1;
    }
    for (var element in sMap.entries) {
      if (!(tMap[element.key] == element.value)) return false;
    }
    return true;
  }
}
