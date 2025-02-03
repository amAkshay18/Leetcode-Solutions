// Solution1
int longestMonotonicSubarray1(List<int> nums){
  int incr = 1;
  int decr = 1;
  int max = 1;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] < nums[i - 1]){
      decr++;
      incr = 1;
    } else if (nums[i] > nums[i - 1]) {
      incr++;
      decr = 1;
    } else {
      incr = 1;
      decr = 1;
    }
    max = max > incr ? max : incr;
    max = max > decr ? max : decr;
  }
  return max;
}

// Solution2
int longestMonotonicSubarray2(List<int> nums) {
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
