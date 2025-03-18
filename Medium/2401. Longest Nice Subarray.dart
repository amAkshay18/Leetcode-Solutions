int longestNiceSubarray(List<int> nums) {
  int left = 0;
  int bitmask = 0;
  int maxLength = 0;
  for (int right = 0; right < nums.length; right++) {
    while ((bitmask & nums[right]) != 0) {
      bitmask ^= nums[left];
      left++;
    }
    bitmask |= nums[right];
    maxLength = (right - left + 1).clamp(maxLength, double.infinity).toInt();
  }
  return maxLength;
}
