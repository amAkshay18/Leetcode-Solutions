class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> set = Set<int>();
    for (int i = 0; i < nums.length; i++) {
      if (set.contains(nums[i])) {
        return true;
      } else {
        set.add(nums[i]);
      }
    }
    return false;
  }
}
