class Solution {
  int averageValue(List<int> nums) {
    int sum = 0;
    int count = 0;

    for (int i = 0; i < nums.length; i++) {
      (nums[i] % 2 == 0 && nums[i] % 3 == 0)
          ? (sum += nums[i]) & (count++)
          : null;
    }

    return (sum == 0) ? 0 : (sum ~/ count);
  }
}
