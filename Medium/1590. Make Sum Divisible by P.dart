import 'dart:math';

class Solution {
  int minSubarray(List<int> nums, int p) {
    int totalSum = 0;
    for (int num in nums) {
      totalSum += num;
    }
    int remainder = totalSum % p;
    if (remainder == 0) return 0;
    Map<int, int> prefixModMap = {0: -1};
    int prefixSum = 0;
    int minLength = nums.length;
    for (int i = 0; i < nums.length; i++) {
      prefixSum += nums[i];
      int currentMod = prefixSum % p;
      int targetMod = (currentMod - remainder) % p;
      if (targetMod < 0) targetMod += p;
      if (prefixModMap.containsKey(targetMod)) {
        minLength = min(minLength, i - prefixModMap[targetMod]!);
      }
      prefixModMap[currentMod] = i;
    }
    return minLength == nums.length ? -1 : minLength;
  }
}