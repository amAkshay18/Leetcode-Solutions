class Solution {
  int longestSubarray(List<int> nums) {
    int n = nums.length;
    if (n <= 2) return n;
    int result = 2;
    int c = 2;
    for (int i = 2; i < n; i++) {
      if (nums[i] == nums[i - 1] + nums[i - 2]) {
        c++;
      } else {
        c = 2;
      }
      if (c > result) {
        result = c;
      }
    }
    return result;
  }
}