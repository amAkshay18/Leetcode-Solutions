class Solution {
  bool isAcronym(List<String> words, String s) {
    String firstLettersOfWords = '';
    for (String word in words) {
      firstLettersOfWords += word[0];
    }
    return firstLettersOfWords == s;
  }
}
