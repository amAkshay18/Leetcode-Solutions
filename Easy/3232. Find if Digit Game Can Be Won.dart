bool canAliceWin(List<int> nums) {
  int singleSum = 0, doubleSum = 0;
  for (int num in nums) {
    (num < 10) ? singleSum += num : doubleSum += num;
  }
  return singleSum != doubleSum;
}
