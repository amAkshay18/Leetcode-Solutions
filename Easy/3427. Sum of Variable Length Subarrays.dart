import 'dart:math';

class Solution {
  int subarraySum(List<int> nums) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      int start = max(0, i - nums[i]);
      for (int j = start; j <= i; j++) {
        sum += nums[j];
      }
    }
    return sum;
  }
}
