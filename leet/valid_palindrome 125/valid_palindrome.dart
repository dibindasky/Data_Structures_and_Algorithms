class Solution {
  bool isPalindrome(String s) {
    int i = 0, j = s.length - 1;
    s = s.toLowerCase();
    while (i < j) {
      if (!isAlfaNumeric(s[i])) {
        i++;
      }
      if (!isAlfaNumeric(s[j])) {
        j--;
      }
      if (isAlfaNumeric(s[i]) && isAlfaNumeric(s[j])) {
        if (s[i] != s[j]) {
          return false;
        } else {
          i++;
          j--;
        }
      }
    }
    return true;
  }

  bool isAlfaNumeric(String character) {
    if (character.length != 1) return false;
    int code = character.codeUnitAt(0);
    return ((code >= 97 && code <= 122) || (code >= 48 && code <= 57));
  }
}

void main() {
  print('alfa ${Solution().isPalindrome('0P')}');
}
