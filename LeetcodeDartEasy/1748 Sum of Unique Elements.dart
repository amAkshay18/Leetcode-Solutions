int sumOfUnique(List<int> nums) {
  Map<int, int> countMap = {};
  int sum = 0;
  for (int num in nums) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }
  for (int num in nums) {
    if (countMap[num] == 1) sum += num;
  }
  return sum;
}
