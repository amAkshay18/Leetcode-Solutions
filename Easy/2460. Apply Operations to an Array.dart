List<int> applyOpearations(List<int> nums) {
  List<int> result = List.filled(nums.length, 0);
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) {
      nums[i] *= 2;
      nums[i + 1] = 0;
    }
  }
  int j = 0;
  for (int i = 0; i < nums.length ; i++) {
    if (nums[i] != 0) {
      result[j++] = nums[i];
    }
  }
  return result;
}
