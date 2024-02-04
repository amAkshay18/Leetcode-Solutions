int removeDuplicates(List<int> nums) {
  Set<int> uniqueNumbers = {};
  List<int> result = [];
  for (int num in nums) {
    if (uniqueNumbers.add(num)) {
      result.add(num);
    }
  }
  nums.clear();
  nums.addAll(result);
  return nums.length;
}
