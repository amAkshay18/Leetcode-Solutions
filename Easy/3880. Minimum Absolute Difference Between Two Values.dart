class Solution {
  int minAbsoluteDifference(List<int> nums) {
    int minDiff = 1000000;
    bool found = false;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        for (int j = 0; j < nums.length; j++) {
          if (nums[j] == 2) {
            int diff = (i - j).abs();
            if (diff < minDiff) {
              minDiff = diff;
              found = true;
            }
          }
        }
      }
    }
    return found ? minDiff : -1;
  }
}