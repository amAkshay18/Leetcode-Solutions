class Solution {
  int prefixCount(List<String> words, String pref) {
    int result = 0;
    for (int index = 0; index < words.length; index++) {
      String currentWord = words[index];
      if (currentWord.startsWith(pref)) {
        result++;
      }
    }
    return result;
  }
}
