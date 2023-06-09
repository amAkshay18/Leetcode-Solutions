// 1909. Remove One Element to Make the Array Strictly Increasing
// Given a 0-indexed integer array nums, return true if it can be made strictly increasing after removing exactly one element, or false otherwise. If the array is already strictly increasing, return true.

// The array nums is strictly increasing if nums[i - 1] < nums[i] for each index (1 <= i < nums.length).
class Solution {
  bool canBeIncreasing(List<int> nums) {
    if (isSorted(nums)) {
      return true;
    }

    for (int i = 0; i < nums.length; i++) {
      List<int> newNums = List.from(nums);
      newNums.removeAt(i);
      if (isSorted(newNums)) {
        return true;
      }
    }
    return false;
  }

  bool isSorted(List<int> nums) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1] || nums[i] == nums[i + 1]) {
        return false;
      }
    }
    return true;
  }
}
