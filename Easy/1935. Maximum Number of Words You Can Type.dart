class Solution {
  int canBeTypedWords(String text, String brokenLetters) {
    List<String> words = text.trim().split(" ");
    int count = 0;
    for (var word in words) {
      bool canType = true;
      for (int i = 0; i < brokenLetters.length; i++) {
        if (word.contains(brokenLetters[i])) {
          canType = false;
          break;
        }
      }
      if (canType) count++;
    }
    return count;
  }
}
