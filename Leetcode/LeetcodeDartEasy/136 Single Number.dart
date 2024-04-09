int singleNumber(List<int> nums) {
  Set<int> seen = {};
  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    if (seen.contains(num)) {
      seen.remove(num);
    } else {
      seen.add(num);
    }
  }
  return seen.first;
}
