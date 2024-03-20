int addDigits(int num) {
  while (num >= 0) {
    int sum = 0;
    while (num > 0) {
      sum += num % 10;
      num ~/= 10;
    }
    num = sum;
  }
  return num;
}
