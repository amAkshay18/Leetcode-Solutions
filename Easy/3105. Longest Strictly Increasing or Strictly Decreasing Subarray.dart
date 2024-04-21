int longestMonotonicSubarray(List<int> nums) {
  if (nums.length <= 1) return nums.length;
  int maxLength = 1;
  int increasingLength = 1;
  int decreasingLength = 1;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i - 1]) {
      increasingLength++;
      decreasingLength = 1;
    } else if (nums[i] < nums[i - 1]) {
      decreasingLength++;
      increasingLength = 1;
    } else {
      increasingLength = 1;
      decreasingLength = 1;
    }
    maxLength = maxLength > increasingLength ? maxLength : increasingLength;
    maxLength = maxLength > decreasingLength ? maxLength : decreasingLength;
  }
  return maxLength;
}
