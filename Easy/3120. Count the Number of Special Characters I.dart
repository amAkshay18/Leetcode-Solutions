int numberOfSpecialChars(String word) {
  int count = 0;
  Set<String> words = word.split('').toSet();
  for (String char in words) {
    if (char == char.toUpperCase()) {
      if (words.contains(char.toLowerCase())) count++;
    }
  }
  return count;
}
