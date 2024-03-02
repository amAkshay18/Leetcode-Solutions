class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> frequencyMap = {};
    Set<int> frequencySet = {};
    for (int number in arr) {
      frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
    }
    for (int count in frequencyMap.values) {
      if (!frequencySet.add(count)) {
        return false;
      }
    }
    return true;
  }
}
