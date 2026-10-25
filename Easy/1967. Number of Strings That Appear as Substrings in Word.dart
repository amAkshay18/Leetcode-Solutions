class Solution {
  int numOfStrings(List<String> patterns, String word) {
    int count = 0;
    for (var str in patterns) {
      if (word.contains(str)) {
        count++;
      }
    }
    return count;
  }
}
