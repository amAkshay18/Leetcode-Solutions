int trailingZeroes(int n) {
  int count = 0;
  int i = 5;
  while (n ~/ i > 0) {
    count = count + n ~/ i;
    i = i * 5;
  }
  return count;
}
