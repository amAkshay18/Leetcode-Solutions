class Solution {
  int minOperations(List<int> nums) {
    int c = 0;
    for (int i = 0; i < nums.length - 2; i++) {
      if (nums[i] == 0) {
        for (int j = i; j <= i + 2; j++) {
          if (nums[j] == 0) {
            nums[j] = 1;
          } else {
            nums[j] = 0;
          }
        }
        c++;
      }
    }
    if (nums.every((x) => x == 1)) {
      return c;
    } else {
      return -1;
    }
  }
}