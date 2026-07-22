class Solution {
  List<int> transformArray(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      nums[i] = nums[i] % 2 == 0 ? 0 : 1;
    }
    nums.sort();
    return nums;
  }
}