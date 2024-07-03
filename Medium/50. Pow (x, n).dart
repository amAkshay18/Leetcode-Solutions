import 'dart:math';

double myPow1(double x, int n) {
  return pow(x, n).toDouble();
}

double myPow2(double x, int n) {
  if (n == 0) return 1; // Base case: x^0 = 1

  if (n < 0) {
    x = 1 / x; // Convert to positive exponent
    n = -n;
  }

  double result = 1;
  while (n > 0) {
    if (n % 2 == 1) {
      result *= x; // Multiply result by x if n is odd
    }
    x *= x; // Square the base
    n ~/= 2; // Integer division by 2
  }

  return result;
}

double myPow3(double x, int n) {
  if (n == 0) return 1; // Base case: x^0 = 1

  if (n < 0) {
    x = 1 / x; // Convert to positive exponent
    n = -n;
  }

  double result = 1;

  // Using a for loop instead of a while loop
  for (int exp = n; exp > 0; exp ~/= 2) {
    if (exp % 2 == 1) {
      result *= x; // Multiply result by x if exp is odd
    }
    x *= x; // Square the base
  }

  return result;
}
