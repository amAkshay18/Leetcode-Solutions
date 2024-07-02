int minimumOperations1(List<int> nums) {
  return nums.where((element) => element % 3 != 0).length;
}

int minimumOperations2(List<int> nums) {
  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] % 3 != 0) result++;
  }
  return result;
}
