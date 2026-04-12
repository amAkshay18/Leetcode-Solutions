class Solution {
  int findLengthOfLCIS(List<int> nums) {
    if (nums.isEmpty)
    return 0;
    int len = 1;
    int a = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] > nums[i - 1]) {
        a++;
      }
      else {
        len = max(len, a);
        a = 1;
      }
    }
    return max(len, a);
  }
  int max(int x, int y){
    return x > y ? x : y;
  }
}