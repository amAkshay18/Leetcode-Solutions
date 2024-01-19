class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && (j - i).abs() <= k) {
          return true;
        }
      }
    }
    return false;
  }
}
