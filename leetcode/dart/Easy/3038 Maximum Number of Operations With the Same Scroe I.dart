int maxOperations(List<int> nums) {
  int n = nums.length - 1;
  int count = 1;
  int score = nums[0] + nums[1];
  for (var i = 2; i < n; i++) {
    if (nums[i] + nums[i + i] == score) {
      count++;
      i++;
    } else {
      break;
    }
  }
  return count;
}
