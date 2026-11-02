import 'dart:math';

class Solution {
  int minOperations(List<int> nums, int k) {
    int minNum = nums.reduce(min);
    if (minNum < k) return -1;
    Set<int> numSet = nums.toSet();
    int operations = minNum == k ? numSet.length - 1 : numSet.length;
    return operations;
  }
}