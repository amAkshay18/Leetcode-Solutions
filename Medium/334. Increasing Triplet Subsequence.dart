bool increasingTriplet(List<int> nums) {
  int? min;
  int? secondMin;
  for (int num in nums) {
    if (min == null || num <= min) {
      min = num;
    } else if (secondMin == null || num <= secondMin) {
      secondMin = num;
    } else {
      return true;
    }
  }
  return false;
}
