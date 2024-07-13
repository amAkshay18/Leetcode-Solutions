bool divideArray(List<int> nums) {
  nums.sort();
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != nums[i + 1]) return false;
  }
  return true;
}
