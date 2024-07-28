List<List<int>> findMatrix(List<int> nums) {
  Map<int, int> count = {};
  List<List<int>> result = [];
  for (var num in nums) {
    count[num] = (count[num] ?? 0) + 1;
    if (count[num]! > result.length) result.add([]);
    result[count[num]! - 1].add(num);
  }
  return result;
}
