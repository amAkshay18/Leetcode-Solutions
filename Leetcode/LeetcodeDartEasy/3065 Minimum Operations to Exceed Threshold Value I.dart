int minOperations(List<int> nums, int k) {
  nums.sort();
  int operations = 0;
  int index = 0;
  while (nums[index] < k) {
    nums.removeAt(index);
    operations++;
  }
  return operations;
}
