class Solution {
  int smallestRangeI(List<int> nums, int k) {
    nums.sort();
    if ((nums.first + k) >= (nums.last - k))
      return 0;
    else
      return (nums.last - k) - (nums.first + k);
  }
}
