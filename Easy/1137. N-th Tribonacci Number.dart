int tribonacci(int n) {
  if (n < 3) return n == 0 ? 0 : 1;
  int a = 0;
  int b = 1;
  int c = 1;
  for (int i = 2; i < n; i++) {
    int temp = a + b + c;
    a = b;
    b = c;
    c = temp;
  }
  return c;
}
