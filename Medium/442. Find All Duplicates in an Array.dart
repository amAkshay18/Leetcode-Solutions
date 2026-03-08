class Solution {
  List<int> findDuplicates(List<int> nums) {
    List<int> valuesList = [];
    Map<int, int> frequencyMap = {};
    for (var n in nums) {
      frequencyMap[n] = (frequencyMap[n] ?? 0) + 1;
    }
    for (var values in frequencyMap.entries) {
      if (values.value == 2) {
        valuesList.add(values.key);
      }
    }
    return valuesList;
  }
}
