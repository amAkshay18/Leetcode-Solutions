List<List<int>> largeGroupPositions(String s) {
  List<List<int>> result = [];
  int n = s.length;
  int start = 0;
  for (int end = 1; end < n; end++) {
    if (s[end] != s[start]) {
      if (end - start >= 3) {
        result.add([start, end - 1]);
      }
      start = end;
    }
  }
  if (n - start >= 3) {
    result.add([start, n - 1]);
  }
  return result;
}
