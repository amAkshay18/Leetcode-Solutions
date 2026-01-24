class Solution {
  int minPairSum(List<int> nums) {
    nums.sort();
    int start = 0;
    int end = nums.length - 1;
    int maxPair = 0;
    while (start < end) {
      int pairSum = nums[start] + nums[end];
      if (pairSum > maxPair) {
        maxPair = pairSum;
      }
      start++;
      end--;
    }
    return maxPair;
  }
}
