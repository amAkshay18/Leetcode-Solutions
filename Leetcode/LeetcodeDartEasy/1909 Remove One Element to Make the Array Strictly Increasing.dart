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
