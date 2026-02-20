class Solution {
  String removeOuterParentheses(String s) {
    int depth = 0;
    String result = '';
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        if (depth > 0) {
          result += s[i];
        }
        depth++;
      } else {
        depth--;
        if (depth > 0) {
          result += s[i];
        }
      }
    }
    return result;
  }
}