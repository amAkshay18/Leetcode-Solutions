class Solution {
  int smallestNumber(int n, int t) {
    while (true) {
      int currentNumber = n;
      int digitProduct = 1;
      while (currentNumber != 0) {
        int digit = currentNumber % 10;
        currentNumber ~/= 10;
        digitProduct *= digit;
      }
      if (digitProduct % t == 0) {
        return n;
      }
      n++;
    }
  }
}