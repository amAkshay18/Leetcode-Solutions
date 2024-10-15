int findContentChildren(List<int> g, List<int> s) {
  g.sort();
  s.sort();
  int result = 0;
  int i = 0;
  int j = 0;
  while (i <= g.length && j <= s.length) {
    if (s[j] >= g[i]) {
      result++;
      i++;
    }
    j++;
  }
  return result;
}
