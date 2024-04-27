// Solution1
String reverseString(String s, List<int> indices) {
  Map<int, String> characterMap = {};
  for (int i = 0; i < indices.length; i++) {
    int index = indices[i];
    characterMap[index] = s[i];
  }
  List<int> sortedKeys = characterMap.keys.toList()..sort();
  Map<int, String> sortedMap = {};
  for (var key in sortedKeys) {
    sortedMap[key] = characterMap[key]!;
  }
  String sortedString = sortedMap.values.join();
  return sortedString;
}

// Solution 2
String reverseString2(String s, List<int> indices) {
  Map<int, String> characterMap = {};
  for (int i = 0; i < indices.length; i++) {
    int index = indices[i];
    characterMap[index] = s[i];
  }
  var sortedIndices = characterMap.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  String sortedString = sortedIndices.map((e) => e.value).join();
  return sortedString;
}
