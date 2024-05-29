// Solution 1
int countPrefixes1(List<String> words, String s) {
  int count = 0;
  for (String word in words) {
    if (s.startsWith(word)) count++;
  }
  return count;
}

// Solution 2
int countPrefixes2(List<String> words, String s) {
  int count = 0;
  for (int i = 0; i < s.length; i++) {
    for (int j = 0; j < words.length; j++) {
      if (words[j] == s.substring(0, i + 1)) count++;
    }
  }
  return count;
}
