class Solution {
  bool hasSameDigits(String s) {
    while (s.length > 2) {
      String temp = '';
      for (int i = 0; i < s.length - 1; i++) {
        temp += ((int.parse(s[i]) + int.parse(s[i + 1])) % 10).toString();
      }
      s = temp;
    }
    return s[0] == s[1];
  }
}