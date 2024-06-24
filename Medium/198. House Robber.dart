int rob(List<int> nums) {
  if (nums.isEmpty) return 0;
  if (nums.length == 1) return nums[0];
  List<int> maxMoney = List.filled(nums.length, 0);
  maxMoney[0] = nums[0];
  maxMoney[1] = nums[0] > nums[1] ? nums[0] : nums[1];
  for (int i = 2; i < nums.length; i++) {
    int skipCurrentHouse = maxMoney[i - 1];
    int robCurrentHouse = nums[i] + maxMoney[i - 2];
    maxMoney[i] =
        skipCurrentHouse > robCurrentHouse ? skipCurrentHouse : robCurrentHouse;
  }
  return maxMoney.last;
}
