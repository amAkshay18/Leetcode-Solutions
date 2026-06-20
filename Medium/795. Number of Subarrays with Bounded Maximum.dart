class Solution {
  int numSubarrayBoundedMax(List<int> nums, int left, int right) {
    int l = -1;
    int r = -1;
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > right) {
        l = i;
      }
      if (nums[i] >= left) {
        r = i;
      }
      count += (r - l);
    }
    return count;
  }
}