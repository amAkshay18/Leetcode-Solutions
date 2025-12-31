class Solution {
  int absDifference(List<int> nums, int k) {
    nums.sort();
    int minSum = 0;
    int maxSum = 0;
    for (int i = 0; i < k; i++) {
      minSum += nums[i];
    }
    for (int i = nums.length - k; i < nums.length; i++) {
      maxSum += nums[i];
    }
    return (maxSum - minSum).abs();
  }
}
