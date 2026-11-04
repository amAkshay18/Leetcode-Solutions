class Solution {
  int countPartitions(List<int> nums) {
    int total = nums.reduce((a, b) => a + b);
    int leftsum = 0;
    int count = 0;
    for (int i = 0; i < nums.length - 1; i++) {
      leftsum += nums[i];
      int rightsum = total - leftsum;
      if ((leftsum - rightsum).abs() % 2 == 0) {
        count++;
      }
    }
    return count;
  }
}
