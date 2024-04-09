int repeatedNTimes(List<int> nums) {
  nums.sort();
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) return nums[i];
  }
  return 0;
}
