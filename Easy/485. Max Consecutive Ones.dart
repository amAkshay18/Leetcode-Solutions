int findMaxConsecutiveOnes(List<int> nums) {
  int maxCount = 0;
  int currentCount = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 1) {
      currentCount++;
      if (currentCount > maxCount) {
        maxCount = currentCount;
      }
    } else {
      currentCount = 0;
    }
  }
  return maxCount;
}
