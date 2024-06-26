int sumOfSquares(List<int> nums) {
  int sum = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums.length % i == 0) sum += nums[i - 1] * nums[i - 1];
  }
  return sum;
}

int sumOfSquares2(List<int> nums) {
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums.length % i + 1 == 0) sum += nums[i] * nums[i];
  }
  return sum;
}
