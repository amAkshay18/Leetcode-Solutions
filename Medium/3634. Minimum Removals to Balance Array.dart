class Solution {
  int minRemoval(List<int> nums, int k) {
    nums.sort();
    int n = nums.length;
    int left = 0;
    int maxSize = 1;
    for (int right = 0; right < n; right++) {
      while (nums[right] > nums[left] * k) {
        left++;
      }
      int currentSize = right - left + 1;
      if (currentSize > maxSize) {
        maxSize = currentSize;
      }
    }
    return n - maxSize;
  }
}
