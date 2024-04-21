bool isMonotonic(List<int> nums) {
  if (nums.isEmpty) {
    return true;
  }
  bool increasing = nums[0] < nums[nums.length - 1];
  for (int i = 0; i < nums.length - 1; i++) {
    if ((increasing && nums[i] > nums[i + 1]) ||
        (!increasing && nums[i] < nums[i + 1])) {
      return false;
    }
  }
  return true;
}
