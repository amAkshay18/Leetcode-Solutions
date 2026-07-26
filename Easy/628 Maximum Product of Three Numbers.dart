import 'dart:math';

int maximumProduct(List<int> nums) {
  if (nums.length == 3) {
    return nums[0] * nums[1] * nums[2];
  } else {
    return max(
      nums[0] * nums[1] * nums[nums.length - 1],
      nums[nums.length - 3] * nums[nums.length - 2] * nums[nums.length - 1],
    );
  }
}
class Solution {
  int maximumProduct(List<int> nums) {
    nums.sort();
    int n = nums.length;
    int product1 = nums[n - 1] * nums[n - 2] * nums[n - 3];
    int product2 = nums[0] * nums[1] * nums[n - 1];
    return product1 > product2 ? product1 : product2;
  }
}
