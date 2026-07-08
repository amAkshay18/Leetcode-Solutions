class Solution {
  int maxDistinct(String s) {
    Set<String> unique = {};
    for (int i = 0; i < s.length; i++) {
      unique.add(s[i]);
    }
    return unique.length;
  }
}