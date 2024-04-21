int getMinDistance(List<int> nums, int target, int start) {
  if (target == nums[start]) return 0;
  int distance = nums.length;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      if (distance > (i - start).abs()) distance = (i - start).abs();
    }
  }
  return distance;
}
