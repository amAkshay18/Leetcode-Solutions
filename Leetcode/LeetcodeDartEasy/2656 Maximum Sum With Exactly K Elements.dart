class Solution {
  int maximizeSum(List<int> nums, int k) {
    nums.sort();
    int m = 0;
    while (k > 0) {
      m += nums[nums.length - 1]++;
      k--;
    }
    return m;
  }
}
