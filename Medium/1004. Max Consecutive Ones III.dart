int longestOnes(List<int> nums, int k) {
  int maxLength = 0;
  for (int i = 0; i < nums.length; i++) {
    int zeroCount = 0;
    for (int j = i; j < nums.length; j++) {
      if (nums[j] == 0) zeroCount++;
      if (zeroCount > k) break;
      int currentLength = j - i + 1;
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    }
  }
  return maxLength;

}