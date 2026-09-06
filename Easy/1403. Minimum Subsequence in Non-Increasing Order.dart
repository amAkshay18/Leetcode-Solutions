class Solution {
  List<int> minSubsequence(List<int> nums) {
    nums.sort((a, b) => b.compareTo(a));
    int totalSum = nums.fold(0, (a, b) => a + b);
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
      if (totalSum - sum < sum) return nums.sublist(0, i + 1);
    }
    return [];
  }
}