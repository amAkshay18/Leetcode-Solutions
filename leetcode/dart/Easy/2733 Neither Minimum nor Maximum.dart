class Solution {
  int findNonMinOrMax(List<int> nums) {
    if (nums.length <= 2) {
      return -1;
    }
    nums.sort();
    return nums[1];
  }
}
