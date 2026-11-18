class Solution {
  int minChanges(String s) {
    int count = 0;
    for (int i = 0; i < s.length; i = i + 2) {
      if (s[i] != s[i + 1]) {
        count++;
      }
    }
    return count;
  }
}
