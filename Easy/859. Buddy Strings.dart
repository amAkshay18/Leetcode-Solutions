class Solution {
  bool buddyStrings(String s, String goal) {
    if (s.length != goal.length) {
      return false;
    }
    if (s == goal) {
      Set<String> uniqueChars = s.split('').toSet();
      return uniqueChars.length < s.length;
    }
    List<int> diffIndices = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] != goal[i]) {
        diffIndices.add(i);
        if (diffIndices.length > 2) return false;
      }
    }
    if (diffIndices.length != 2) return false;
    return s[diffIndices[0]] == goal[diffIndices[1]] &&
        s[diffIndices[1]] == goal[diffIndices[0]];
  }
}
