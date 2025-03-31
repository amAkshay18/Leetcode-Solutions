List<int> partitionLabels(String s) {
  Map<String, int> lastIndex = {};
  for (int i = 0; i < s.length; i++) {
    lastIndex[s[i]] = i;
  }
  List<int> result = [];
  int start = 0, end = 0;
  for (int i = 0; i < s.length; i++) {
    end = end > lastIndex[s[i]]! ? end : lastIndex[s[i]]!;
    if (i == end) {
      result.add(end - start + 1);
      start = i + 1;
    }
  }
  return result;
}
