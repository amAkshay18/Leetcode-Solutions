List<int> shuffle(List<int> nums, int n) {
  List<int> result = List<int>.filled(2 * n, 0);
  for (int i = 0; i < n; i++) {
    result[2 * i] = nums[i];
    result[2 * i + 1] = nums[i + n];
  }
  return result;
}
