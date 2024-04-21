int findNumbers(List<int> nums) {
  int evenDigits = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i].toString().length % 2 == 0) evenDigits++;
  }
  return evenDigits;
}
