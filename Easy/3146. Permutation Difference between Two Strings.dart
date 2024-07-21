int findPermutationDifference(String s, String t) {
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    sum += (i - t.indexOf(s[i])).abs();
  }
  return sum;
}
