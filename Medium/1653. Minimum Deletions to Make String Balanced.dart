import 'dart:math';

class Solution {
  int minimumDeletions(String s) {
    int bCount = 0;
    int deletions = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'a') {
        deletions++;
      } else {
        deletions = min(bCount, deletions);
        bCount++;
      }
    }
    return min(bCount, deletions);
  }
}
