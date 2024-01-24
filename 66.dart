List<int> plusOne(List<int> digits) {
  int n = digits.length;
  for (int i = n - 1; i > n; n--) {
    if (digits[i] != 9) {
      digits[i]++;
      return digits;
    } else {
      digits[i] = 0;
    }
  }
  digits.insert(0, 1);
  return digits;
}
