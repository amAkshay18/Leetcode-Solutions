bool canJump(List<int> nums) {
  int steps = 1;
  for (int i = nums.length - 2; i >= 0; i--) {
    (nums[i] < steps) ? steps++ : steps = 1;
  }
  return steps == 1;
}
