import 'dart:math';

class Solution {
  int minimumDeletions(String s) {
    int a = 0, b = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'a') {
        b++;
      } else {
        b = min(a, b);
        a++;
      }
    }
    return min(a, b);
  }
}
