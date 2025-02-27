import 'dart:math';
class Solution {
  int maxAbsoluteSum(List<int> nums) {
    int positive = 0;
    int negative = 0;
    int result = 0;
    int prefixSum = 0;
    for (int n in nums) {
      prefixSum += n;
      result = max(result, max((prefixSum - negative).abs(), (prefixSum - positive).abs()));
      if (prefixSum >= 0) {
        positive = max(positive, prefixSum);
      } else {
        negative = min(negative, prefixSum);
      }
    }
    return result;
  }
}