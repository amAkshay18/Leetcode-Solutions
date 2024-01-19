// 1480. Running Sum of 1d Array
// Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

// Return the running sum of nums.

// Example 1:

// Java Solution

// class Solution {
//     public int[] runningSum(int[] nums) {
//         int[] result = new int[nums.length];
//         int sum = 0;
//         for (int i = 0; i < nums.length; i++) {
//             sum = sum + nums[i];
//             result[i] = sum;
//         }
//         return result;
//     }
// }

// Dart Solution

List<int> runningSum(List<int> nums) {
  List<int> result = List<int>.filled(nums.length, 0);
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum = sum + nums[i];
    result[i];
  }
  return result;
}
