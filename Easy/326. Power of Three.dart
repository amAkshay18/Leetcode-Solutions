// Solution 1
bool isPowerOfThree1(int n) {
  for (double i = 1; i <= n; i *= 3) {
    if (i == n) return true;
  }
  return false;
}

// Solution 2
bool isPowerOfThree2(int n) {
  if (n <= 0) return false;
  while (n % 3 == 0) {
    n ~/= 3;
  }
  return n == 1;
}

void main() {
  int num1 = 27;
  int num2 = 0;
  int num3 = -1;

  bool result1 = isPowerOfThree1(num1);
  bool result2 = isPowerOfThree1(num2);
  bool result3 = isPowerOfThree1(num3);

  print(result1);
  print(result2);
  print(result3);

  bool result4 = isPowerOfThree2(num1);
  bool result5 = isPowerOfThree2(num2);
  bool result6 = isPowerOfThree2(num3);

  print(result4);
  print(result5);
  print(result6);
}
