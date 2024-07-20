class Solution {
  int vowelStrings(List<String> words, int left, int right) {
    int count = 0;
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    for (int i = left; i <= right; i++) {
      String word = words[i];
      if (vowels.contains(word[0]) && vowels.contains(word[word.length - 1])) {
        count++;
      }
    }
    return count;
  }
}
