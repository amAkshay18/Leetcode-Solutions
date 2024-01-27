import 'dart:math';

int maximumProduct(List<int> nums) {
  if (nums.length == 3) {
    return nums[0] * nums[1] * nums[2];
  } else {
    return max(nums[0] * nums[1] * nums[nums.length - 1],
        nums[nums.length - 3] * nums[nums.length - 2] * nums[nums.length - 1]);
  }
}
