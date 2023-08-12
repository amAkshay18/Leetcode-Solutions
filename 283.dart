// 283. Move Zeroes
// Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// Note that you must do this in-place without making a copy of the array.
// Follow up: Could you minimize the total number of operations done?

// solution
class Solution {
  void moveZeroes(List<int> nums) {
    int limit = nums.length;
    for (int i = 0; i < limit; i++) {
      if (nums[i] == 0) {
        for (int j = i; j < limit - 1; j++) {
          nums[j] = nums[j + 1];
        }
        nums[limit - 1] = 0;
        limit--;
        i--;
      }
    }
  }
}
