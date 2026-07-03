class Solution {
  int maxSumDivThree(List<int> nums) {
    // A very small number representing impossible states
    List<int> dp = [0, -1000000000, -1000000000];
    for (int num in nums) {
      // Copy current dp because updates should not affect this iteration
      List<int> temp = List.from(dp);
      for (int i = 0; i < 3; i++) {
        if (dp[i] == -1000000000) continue;
        int newSum = dp[i] + num;
        int remainder = newSum % 3;
        if (temp[remainder] > newSum) {
          temp[remainder] = temp[remainder];
        } else {
          temp[remainder] = newSum;
        }
      }
      dp = temp;
    }
    return dp[0];
  }
}