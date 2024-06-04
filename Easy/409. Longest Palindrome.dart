int longestPalindrome(String s) {
  int oddCount = 0;
  Map<String, int> charCount = {};
  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];
    if (charCount.containsKey(currentChar)) {
      charCount[currentChar] = charCount[currentChar]! + 1;
    } else {
      charCount[currentChar] = 1;
    }
    charCount[currentChar]! % 2 == 1 ? oddCount++ : oddCount--;
  }
  if (oddCount > 1) return s.length - oddCount + 1;
  return s.length;
}
