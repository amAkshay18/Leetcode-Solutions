String greatestLetter(String s) {
  String gLetter = '';
  for (int i = 0; i < s.length; i++) {
    if (s[i].toLowerCase() != s[i] && s.contains(s[i].toLowerCase())) {
      gLetter = gLetter.compareTo(s[i]) > 0 ? gLetter : s[i];
    }
  }
  return gLetter;
}
