class Solution {
  bool canPartition(List<int> nums) {
    int total = nums.reduce((a, b) => a + b);
    if (total % 2 != 0) return false;
    int target = total ~/ 2;
    List<bool> dp = List.filled(target + 1, false);
    dp[0] = true;
    for (int num in nums) {
      for (int i = target; i >= num; i--) {
        dp[i] = dp[i] || dp[i - num];
      }
    }
    return dp[target];
  }
}