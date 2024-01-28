String repeatedCharacter(String s) {
  List<String> letters = [];
  for (int i = 0; i < s.length; i++) {
    if (letters.contains(s[i])) {
      return s[i];
    } else {
      letters.add(s[i]);
    }
  }
  return '';
}
