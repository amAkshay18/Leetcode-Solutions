int countKeyChanges(String s) {
  s = s.toLowerCase();
  int count = 0;
  for (int i = 0; i < s.length - 1; i++) {
    if (s[i] != s[i + 1]) count++;
  }
  return count;
}
