int findKOr(List<int> nums, int k) {
  List<int> bitCounts = List.filled(32, 0);
  for (int num in nums) {
    for (int i = 0; i < 32; i++) {
      if ((num & (1 << i)) != 0) bitCounts[i]++;
    }
  }
  int result = 0;
  for (int i = 0; i < 32; i++) {
    if (bitCounts[i] >= k) result |= (1 << i);
  }
  return result;
}
