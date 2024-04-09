bool areAlmostEqual(String s1, String s2) {
  if (s1 == s2) return true;
  List<int> differentIndices = [];
  for (int i = 0; i < s1.length; i++) {
    if (s1[i] != s2[i]) differentIndices.add(i);
  }
  if (differentIndices.length != 2) return false;
  if (s1[differentIndices[0]] == s2[differentIndices[1]] &&
      s1[differentIndices[1]] == s2[differentIndices[0]]) {
    return true;
  }
  return false;
}
