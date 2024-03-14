int sumCounts(List<int> nums) {
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j <= nums.length; j++) {
      List<int> subArray = nums.sublist(i, j);
      sum = sum + ((subArray.toSet().length) * (subArray.toSet().length));
    }
  }
  return sum;
}
