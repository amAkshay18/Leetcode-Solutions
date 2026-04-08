import 'dart:math';

class Solution {
  int maxSubArray(List<int> nums) {
    int maxsum = nums[0];
    int currentsum = 0;
    for (int n in nums) {
      if (currentsum < 0) currentsum = 0;
      currentsum += n;
      maxsum = max(maxsum, currentsum);
    }
    return maxsum;
  }
}
