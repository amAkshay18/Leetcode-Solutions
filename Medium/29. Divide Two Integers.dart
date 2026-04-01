class Solution {
  int divide(int dividend, int divisor) {
    int  result = dividend ~/ divisor;
    if (result < -2147483648 ) return -2147483648;
    if (result > 2147483647) return 2147483647;
    return result ;
  }
}