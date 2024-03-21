bool hasTrailingZeros(List<int> nums) {
  int count = 0;
  for (int num in nums) {
    if (num % 2 == 0) count++;
    if (count == 2) return true;
  }
  return false;
}
