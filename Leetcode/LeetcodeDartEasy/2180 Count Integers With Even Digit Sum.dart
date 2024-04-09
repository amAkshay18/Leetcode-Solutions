int countEven(int num) {
  int count = 0;
  for (int i = 0; i < num; i++) {
    int sum = 0;
    int n = i;
    while (n > 0) {
      sum += n % 10;
      n ~/= 10;
    }
    if (sum % 2 == 0) count++;
  }
  return count;
}
