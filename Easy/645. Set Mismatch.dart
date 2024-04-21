List<int> findErrorNums(List<int> nums) {
  Set<int> seen = Set();
  int duplicate = -1, missing = -1;
  for (int num in nums) {
    if (seen.contains(num)) {
      duplicate = num;
    } else {
      seen.add(num);
    }
  }
  for (int i = 1; i <= nums.length; i++) {
    if (!seen.contains(i)) {
      missing = i;
      break;
    }
  }
  return [duplicate, missing];
}
