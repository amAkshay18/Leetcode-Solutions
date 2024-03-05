int countConsistentStrings(String allowed, List<String> words) {
  Set<String> set = allowed.split('').toSet();
  int count = 0;
  for (String s in words) {
    bool consistent = true;
    for (int i = 0; i < s.length; i++) {
      if (!set.contains(s[i])) {
        consistent = false;
        break;
      }
    }
    if (consistent) count++;
  }
  return count;
}
