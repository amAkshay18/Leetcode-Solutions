import 'dart:math';

class Solution {
  int minimumDifference(List<int> nums, int k) {
    if (k == 1) return 0;
    nums.sort();
    int count = nums[k - 1] - nums[0];
    for (int i = 1; i <= nums.length - k; i++) {
      count = min(count, nums[i + k - 1] - nums[i]);
    }
    return count;
  }
}
