// 2535. Difference Between Element Sum and Digit Sum of an Array

// You are given a positive integer array nums.

// The element sum is the sum of all the elements in nums.
// The digit sum is the sum of all the digits (not necessarily distinct) that appear in nums.
// Return the absolute difference between the element sum and digit sum of nums.

// Note that the absolute difference between two integers x and y is defined as |x - y|.
class Solution {
  int differenceOfSum(List<int> nums) {
    int sum1 = 0, sum2 = 0;
    for (int i = 0; i < nums.length; i++) {
      sum1 += nums[i];
      int a = nums[i];
      int b;
      while (a > 0) {
        b = a % 10;
        a ~/= 10;
        sum2 += b;
      }
    }
    return ((sum2 - sum1).abs());
  }
}
