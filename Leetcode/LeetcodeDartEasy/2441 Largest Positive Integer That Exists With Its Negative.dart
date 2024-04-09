int findMaxK(List<int> nums) {
  nums.sort();
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (nums[i] + nums[j] == 0) {
        return nums[j];
      }
    }
  }
  return -1;
}
