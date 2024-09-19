List<int> getSneakyNumbers(List<int> nums) {
  Map<int, int> countMap = {};
  List<int> result = [];
  for (int num in nums) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }
  countMap.forEach((key, value) {
    if (value > 1) result.add(key);
  });
  return result;
}
