class Solution {
  bool isTrionic(List<int> nums) {
    int n = nums.length;
    if (n < 3) return false;
    int i = 0;
    while (i + 1 < n && nums[i] < nums[i + 1]) {
      i++;
    }
    if (i == 0) return false;
    int p = i;
    while (i + 1 < n && nums[i] > nums[i + 1]) {
      i++;
    }
    if (i == p) return false;
    int q = i;
    while (i + 1 < n && nums[i] < nums[i + 1]) {
      i++;
    }
    if (i == q) return false;
    return i == n - 1;
  }
}
