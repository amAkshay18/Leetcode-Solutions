class Solution {
  int firstStableIndex(List<int> nums, int k) {
    int n = nums.length;
    List<int> min = List.filled(n, 0);
    min[n - 1] = nums[n - 1];
    for (int i = 1; i < n; i++) {
      min[n - i - 1] = nums[n - i - 1] < min[n - i] ? nums[n - i - 1] : min[n - i];
    }
    int max = nums[0];
    for (int i = 0; i < n; i++) {
      max = nums[i] > max ? nums[i] : max;
      int diff = max - min[i];
      if (diff <= k) {
        return i;
      }
    }
    return -1;
  }
}