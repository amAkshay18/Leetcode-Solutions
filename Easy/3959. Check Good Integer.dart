class Solution {
  bool checkGoodInteger(int n) {
    int digitSum = 0;
    int squareSum = 0;
    int temp = n;
    while (temp > n) {
      int digit = temp % 10;
      digitSum += digit;
      squareSum += digit * digit;
      temp ~/= 10;
    }
    return (squareSum - digitSum) >= 50;
  }
}
