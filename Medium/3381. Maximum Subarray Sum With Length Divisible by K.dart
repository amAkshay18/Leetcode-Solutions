class Solution {
  int maxSubarraySum(List<int> nums, int k) {
    int n = nums.length;
    List<int> minPrefix = List.filled(k, 1 << 60);
    int prefix = 0;
    int ans = -1 << 60;
    minPrefix[0] = 0;
    for (int i = 0; i < n; i++) {
      prefix += nums[i];
      int mod = ((i + 1) % k);
      ans = ans > (prefix - minPrefix[mod]) ? ans : (prefix - minPrefix[mod]);
      if (prefix < minPrefix[mod]) {
        minPrefix[mod] = prefix;
      }
    }
    return ans;
  }
}