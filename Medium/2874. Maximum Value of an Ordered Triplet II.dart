import 'dart:math';

class Solution {
  int maximumTripletValue(List<int> nums) {
    int n = nums.length;
    if (n < 3) return 0;

    List<int> leftMax = List.filled(n, 0);
    leftMax[0] = nums[0];
    for (int i = 1; i < n; i++) {
      leftMax[i] = max(leftMax[i - 1], nums[i]);
    }

    List<int> rightMax = List.filled(n, 0);
    rightMax[n - 1] = nums[n - 1];
    for (int i = n - 2; i >= 0; i--) {
      rightMax[i] = max(rightMax[i + 1], nums[i]);
    }

    int ans = 0;
    for (int i = 1; i < n - 1; i++) {
      int left = leftMax[i - 1];
      int right = rightMax[i + 1];
      ans = max(ans, (left - nums[i]) * right);
    }

    return ans;
  }
}