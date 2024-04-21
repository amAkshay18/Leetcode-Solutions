int dominantIndex(List<int> nums) {
  int maxIndex = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[maxIndex]) maxIndex = i;
  }
  for (int i = 0; i < nums.length; i++) {
    if (i != maxIndex && nums[maxIndex] < nums[i] * 2) return -1;
  }
  return maxIndex;
}
