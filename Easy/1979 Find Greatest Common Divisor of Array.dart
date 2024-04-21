int finfGCD(List<int> nums) {
  nums.sort();
  int greatestCommonDivisor = 1;
  for (int i = 1; i <= nums.last; i++) {
    if (nums[i] % i == 0 && nums.last % i == 0) {
      greatestCommonDivisor = i;
    }
  }
  return greatestCommonDivisor;
}
