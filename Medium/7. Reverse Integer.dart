int reverse(int x) {
  bool isNegative = false;
  if (x < 0) {
    isNegative = true;
    x = -x;
  }
  int reversedNumber = 0;
  while (x > 0) {
    reversedNumber = (reversedNumber * 10) + (x % 10);
    x ~/= 10;
  }
  if (reversedNumber > 2147483647) return 0;
  return isNegative ? -reversedNumber : reversedNumber;
}
