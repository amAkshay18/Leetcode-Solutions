class Solution {
  int specialArray(List<int> nums) {
    for (int i = 0; i <= nums.length; i++) {
      int result = 0;
      for (var num in nums) {
        if (num >= i) result++;
      }
      if (result == i) return result;
    }
    return -1;
  }
}       