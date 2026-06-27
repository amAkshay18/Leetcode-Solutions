class Solution {
  bool isAdjacentDiffAtMostTwo(String s) {
    for (int i = 0; i < s.length - 1; i++) {
      int first = int.parse(s[i]);
      int second = int.parse(s[i + 1]);
      if ((first - second).abs() > 2) {
        return false;
      }
    }
    return true;
  }
}