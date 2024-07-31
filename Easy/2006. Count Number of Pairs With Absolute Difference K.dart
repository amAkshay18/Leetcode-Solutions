int countKDifference(List<int> nums, int k) {
  int count = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (i != j && nums[i] - nums[j] == k || nums[j] - nums[i] == k) count++;
    }
  }
  return count;
}
