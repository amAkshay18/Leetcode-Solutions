int sumBase(int n, int k) {
  int sum = 0;
  while (n >= k) {
    sum += n % k;
    n ~/= k;
  }
  sum += n;
  return sum;
}
