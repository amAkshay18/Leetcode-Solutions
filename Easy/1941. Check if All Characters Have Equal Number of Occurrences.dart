bool areOccurrencesEqual(String s) {
  Map<String, int> count = {};
  for (String str in s.split('')) {
    count[str] = (count[str] ?? 0) + 1;
  }
  Set<int> values = {};
  count.forEach((key, value) {
    values.add(value);
  });
  return values.length <= 1;
}
