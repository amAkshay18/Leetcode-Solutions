class Solution {
  String replaceDigits(String s) {
    String result = '';
    for (int i = 0; i < s.length; i++) {
      if (s.codeUnitAt(i) >= 97 && s.codeUnitAt(i) <= 122) {
        result += s[i];
      } else {
        result += String.fromCharCode(s.codeUnitAt(i - 1) + int.parse(s[i]));
      }
    }
    return result;
  }
}
