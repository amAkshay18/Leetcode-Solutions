int minOperations(List<int> nums) {
  int count = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] <= nums[i - 1]) {
      int diff = nums[i - 1] - nums[i] + 1;
      nums[i] += diff;
      count += diff;
    }
  }
  return count;
}
