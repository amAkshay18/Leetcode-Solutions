class Solution {
  int differenceOfSum(List<int> nums) {
    int sum1 = 0, sum2 = 0;
    for (int i = 0; i < nums.length; i++) {
      sum1 += nums[i];
      int a = nums[i];
      int b;
      while (a > 0) {
        b = a % 10;
        a ~/= 10;
        sum2 += b;
      }
    }
    return ((sum2 - sum1).abs());
  }
}
