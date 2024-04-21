int findDuplicate(List<int> nums) {
  Set<int> result = {};
  for (int num in nums) {
    if (result.contains(num)) {
      return num;
    } else {
      result.add(num);
    }
  }
  return 0;
}
