List<int> decompressRLElist(List<int> nums) {
  List<int> result = [];

  for (int i = 0; i < nums.length; i += 2) {
    result.addAll(List.filled(nums[i], nums[i + 1]));
  }

  return result;
}
