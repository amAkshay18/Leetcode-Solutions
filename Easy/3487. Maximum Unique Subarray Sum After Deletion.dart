class Solution {
  int maxSum(List<int> nums) {
    int maxElement = nums.reduce((a, b) => a > b ? a : b);
    if (maxElement < 0) return maxElement;
      int sum=0;
      nums.toSet().forEach((num){if(num>0) {
        sum += num;
      };});
    return sum;
  }
}