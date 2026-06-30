class Solution {
  int subarraysDivByK(List<int> nums, int k) {
    Map<int, int> remainderCount = {};
    remainderCount[0] = 1;
    int prefixSum = 0;
    int count = 0;
    for (int num in nums) {
      prefixSum += num;
      int remainder = prefixSum % k;
      if (remainder < 0) {
        remainder += k;
      } 
      if (remainderCount.containsKey(remainder)) {
        count += remainderCount[remainder]!;
      }
      remainderCount[remainder] = (remainderCount[remainder] ?? 0) + 1;
    }
    return count;
  }
}   