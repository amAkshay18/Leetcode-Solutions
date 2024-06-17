bool closeStrings(String word1, String word2) {
  if (word1.length != word2.length) return false;
  Map<String, int> freq1 = {};
  Map<String, int> freq2 = {};
  for (var char in word1.split('')) {
    freq1[char] = (freq1[char] ?? 0) + 1;
  }
  for (var char in word2.split('')) {
    freq2[char] = (freq2[char] ?? 0) + 1;
  }
  var keys1 = freq1.keys.toSet();
  var keys2 = freq2.keys.toSet();
  if (keys1.length != keys2.length) return false;
  for (var key in keys1) {
    if (!keys2.contains(key)) return false;
  }
  var freqList1 = freq1.values.toList()..sort();
  var freqList2 = freq2.values.toList()..sort();
  return freqList1.toString() == freqList2.toString();
}
