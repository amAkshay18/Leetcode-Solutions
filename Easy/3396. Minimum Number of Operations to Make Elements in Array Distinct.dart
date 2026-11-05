class Solution {
  int minimumOperations(List<int> nums) {
    Set<int> set = nums.toSet();
    int count = 0;
    while (nums.length > set.length) {
      if (nums.length <= 3) {
        nums.clear();
        count++;
      } else {
        nums.remove(nums.first);
        nums.remove(nums.first);
        nums.remove(nums.first);
        count++;
        set = nums.toSet();
      }
    }
    return count;
  }
}