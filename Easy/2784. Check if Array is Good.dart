class Solution {
  bool isGood(List<int> nums) {
    nums.sort();
    int n = nums.length;
    int count = 0;
    int value = nums[n - 1];
    if (value + 1 == n) {
      for (int i = 1; i < n; i++) {
        if (nums[i - 1] == i) count++;
      }
      if (count == n - 1) return true;
    }
    return false;
  }
}