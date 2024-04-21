bool canBeEqual(String s1, String s2) {
  final char1 = s1.split('');
  for (int i = 0; i < char1.length - 2; i++) {
    if (char1[i] != s2[i]) {
      var temp = char1[i];
      char1[i] = char1[i + 2];
      char1[i + 2] = temp;
    }
  }
  return char1.join('') == s2;
}
