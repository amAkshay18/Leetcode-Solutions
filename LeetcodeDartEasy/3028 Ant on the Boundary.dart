int returnToBoundaryCount(List<int> nums) {
  int count = 0;
  int boundary = 0;
  for (int i = 0; i < nums.length; i++) {
    boundary += nums[i];
    if (boundary == 0) count++;
  }
  return count;
}
