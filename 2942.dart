class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
    List<int> result = [];
    for (int i = 0; i < words.length; i++) {
      if (words[i].contains(x)) {
        result.add(i);
      }
    }
    return result;
  }
}
