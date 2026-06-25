class Solution {
  int countMajoritySubarrays(List<int> nums, int target) {
    int n = nums.length;
    int result = 0;
    for (int i = 0; i < n; i++) {
      int cnt = 0;
      for (int j = i; j < n; j++) {
        if (nums[j] == target) {
          cnt++;
        }
        if (2 * cnt > (j - i + 1)) {
          result++;
        }
      }
    }
    return result;
  }
}