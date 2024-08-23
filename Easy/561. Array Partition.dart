int arrayPartition(List<int> nums) {
  nums.sort();
  int sum = 0;
  for (int i = 0; i < nums.length; i = i + 2) {
    sum += nums[i];
  }
  return sum;
}
