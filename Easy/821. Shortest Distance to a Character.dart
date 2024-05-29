List<int> shortestToChar(String s, String c) {
  int n = s.length;
  List<int> result = List.filled(n, 0);
  List<int> cPositions = [];
  for (int i = 0; i < n; i++) {
    if (s[i] == c) cPositions.add(i);
  }
  for (int i = 0; i < n; i++) {
    int minDistance = n;
    for (int pos in cPositions) {
      int distance = (i - pos).abs();
      if (distance < minDistance) minDistance = distance;
    }
    result[i] = minDistance;
  }

  return result;
}
