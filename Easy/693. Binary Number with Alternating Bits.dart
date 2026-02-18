class Solution {
  bool hasAlternativeBits(int n) {
    String s = n.toRadixString(2);
    for (int i = 1; i < s.length; i++) {
      if (s[i] == s[i - 1]) return false;
    }
    return true;
  }
}
