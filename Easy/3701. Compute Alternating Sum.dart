class Solution {
  int alternatingSum(List<int> nums) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += (i % 2 == 0) ? nums[i] : -nums[i];
    }
    return sum;
  }
}