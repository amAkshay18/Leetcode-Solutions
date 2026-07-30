class Solution {
  int maxProduct(int n) {
    final digits = [];
    while (n != 0) {
      digits.add(n % 10);
      n = n ~/ 10;
    }
    digits.sort();
    return digits[digits.length - 1] * digits[digits.length - 2];
  }
}