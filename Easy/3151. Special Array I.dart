bool isArraySpecial(List<int> nums) {
  for (int i = 0; i < nums.length - 1; i++) {
    int a = nums[i];
    int b = nums[i + 1];
    if ((a.isEven && b.isEven) || (a.isOdd && b.isOdd)) return false;
  }
  return true;
}
