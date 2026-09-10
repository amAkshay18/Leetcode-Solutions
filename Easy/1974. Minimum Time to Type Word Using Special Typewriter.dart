import 'dart:math';

class Solution {
  int minTimeToType(String word) {
    int result = 0;
    String s = "a";
    for (int i = 0; i < word.length; i++) {
      int diff = (s.codeUnitAt(0) - word[i].codeUnitAt(0)).abs();
      result += min(diff, 26 - diff) + 1;
      s = word[i];
    }
    return result;
  }
}