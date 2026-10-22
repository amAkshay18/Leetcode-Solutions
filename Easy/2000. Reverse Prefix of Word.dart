class Solution {
  String reversePrefix(String word, String ch) {
    String result = word;
    for (int i = 0; i < word.length; i++) {
      if (word[i] == ch) {
        String left = word.substring(0, i + 1).split('').reversed.join();
        String right = word.substring(i + 1, word.length);
        result = left + right;
        break;
      }
    }
    return result;
  }
}
