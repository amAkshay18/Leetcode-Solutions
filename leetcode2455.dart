// 2455. Average Value of Even Numbers That Are Divisible by Three

// Given an integer array nums of positive integers, return the average value of all even integers that are divisible by 3.
// Note that the average of n elements is the sum of the n elements divided by n and rounded down to the nearest integer
class Solution {
  int averageValue(List<int> nums) {
    int sum = 0;
    int count = 0;

    for (int i = 0; i < nums.length; i++) {
      (nums[i] % 2 == 0 && nums[i] % 3 == 0)
          ? (sum += nums[i]) & (count++)
          : null;
    }

    return (sum == 0) ? 0 : (sum ~/ count);
  }
}
