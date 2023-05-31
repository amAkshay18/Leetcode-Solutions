// 448. Find All Numbers Disappeared in an Array
// Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.
// Follow up: Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> numSet = Set<int>.from(nums);
    List<int> result = [];
    for (int i = 1; i <= nums.length; i++) {
      if (!numSet.contains(i)) {
        result.add(i);
      }
    }
    return result;
  }
}
