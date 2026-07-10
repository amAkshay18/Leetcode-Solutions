class Solution {
  int firstMatchingIndex(String s) {
    int result =- 1;
    for (int i = 0; i <= s.length ~/ 2; i++) {
      if (s[i] == s[s.length - i - 1]) {
        result = i;
        break;
      }
    }
    return result ;
   }
}