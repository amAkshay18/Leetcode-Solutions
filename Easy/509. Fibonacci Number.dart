// Solution 1
int fib(int n) {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

// Solution 2
int fib2(int n) {
  if (n <= 1) return n;
  int a = 0;
  int b = 1;
  int result = 0;
  for (int i = 2; i <= n; i++) {
    result = a + b;
    a = b;
    b = result;
  }
  return result;
}

void main() {
  int result = fib(2);
  print(result);

  int result2 = fib(3);
  print(result2);

  int result3 = fib(4);
  print(result3);
}
