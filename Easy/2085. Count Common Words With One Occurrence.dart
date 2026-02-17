class Solution {
  int countWords(List<String> words1, List<String> words2) {
    Map<String, int> map1 = {};
    Map<String, int> map2 = {};
    for (var word in words1) {
      map1[word] = (map1[word] ?? 0) + 1;
    }
    for (var word in words2) {
      map2[word] = (map2[word] ?? 0) + 1;
    }
    int count = 0;
    for (var word in map1.keys) {
      if (map1[word] == 1 && map2[word] == 1) {
        count++;
      }
    }
    return count++;
  }
}
