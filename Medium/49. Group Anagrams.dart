class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> groups = {};
    for (String word in strs) {
      List<String> letters = word.split('')..sort();
      String key = letters.join();
      if (!groups.containsKey(key)) {
        groups[key] = [];
      }
      groups[key]!.add(word);
    }
    return groups.values.toList();
  }
}

class Solution2 {
  List<List<String>> groupAnagrams(List<String> strs) {
    final groups = <String, List<String>>{};
    for (final str in strs) {
      final sortedChars = str.split('')..sort();
      final key = sortedChars.join();
      groups.putIfAbsent(key, () => []).add(str);
    }
    return groups.values.toList();
  }
}
