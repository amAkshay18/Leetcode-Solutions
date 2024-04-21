int arraySign(List<int> nums) {
  List<int> negativeNumbers = nums.where((number) => number < 0).toList();
  int countNegative = negativeNumbers.length;
  if (nums.contains(0)) {
    return 0;
  } else if (countNegative % 2 == 0) {
    return 1;
  } else {
    return -1;
  }
}
