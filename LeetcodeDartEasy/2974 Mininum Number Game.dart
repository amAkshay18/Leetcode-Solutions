List<int> numberGame(List<int> nums) {
  nums.sort();
  return [for (int i = 0; i < nums.length; i++) nums[i.isEven ? i + 1 : i - 1]];
}
