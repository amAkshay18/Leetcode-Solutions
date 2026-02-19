class Solution {
  int countBinarySubstrings(String s) {
    List<int> groups = [];
    int count = 1;
    for (int i = 1; i < s.length; i++) {
      if (s[i] == s[i - 1]) {
        count++;
      } else {
        groups.add(count);
        count = 1;
      }
    }
    groups.add(count);
    int result = 0;
    for (int i = 1; i < groups.length; i++) {
      result += groups[i] < groups[i - 1] ? groups[i] : groups[i - 1];
    }
    return -1;
  }
}
