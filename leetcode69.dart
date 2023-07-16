// 69. Sqrt(x)
// Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

// You must not use any built-in exponent function or operator.
class Solution {
  int mySqrt(int x) {
    if (x == 0) return 0;

    int left = 1;
    int right = x;
    int result = 0;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (mid <= x ~/ mid) {
        result = mid;
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return result;
  }
}
