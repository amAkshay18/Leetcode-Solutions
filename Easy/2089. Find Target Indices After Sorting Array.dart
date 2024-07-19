class Solution {
  List<int> targetIndices(List<int> nums, int target) {
    nums.sort();
    List<int> indices = [];
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        indices.add(i);
      } else if (nums[i] > target) {
        break;
      }
    }
    return indices;
  }
}
