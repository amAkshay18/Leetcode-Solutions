class Solution {
  bool isSubsequence(String s, String t) {
    int sIndex = 0;
    int tIndex = 0;

    while (sIndex < s.length && tIndex < t.length) {
      if (s[sIndex] == t[tIndex]) {
        sIndex++;
      }
      tIndex++;
    }
    return sIndex == s.length;
  }
}
