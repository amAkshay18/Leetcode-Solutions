class Solution {
  List<int> concatWithReverse(List<int> nums) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      result.add(nums[i]);
    }
    for (int i = nums.length - 1; i >= 0; i--) {
      result.add(nums[i]);
    }
    return result;
  }
}