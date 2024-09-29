String kthCharacter(int k) {
  String s = "a";
  while (s.length < k) {
    String temp = "";
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'z') temp += 'a';
      temp += String.fromCharCode(s.codeUnitAt(i) + 1);
    }
    s += temp;
  }
  return s[k - 1];
}
