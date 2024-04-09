class Solution {
  int firstUniqChar(String s) {
    Map<String, int> charFrequency = {};
    for (int i = 0; i < s.length; i++) {
      String currentChar = s[i];
      charFrequency[currentChar] = (charFrequency[currentChar] ?? 0) + 1;
    }
    for (int i = 0; i < s.length; i++) {
      if (charFrequency[s[i]] == 1) {
        return i;
      }
    }
    return -1;
  }
}
