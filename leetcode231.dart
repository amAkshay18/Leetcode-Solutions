// 231. Power of Two
// Given an integer n, return true if it is a power of two. Otherwise, return false.
// An integer n is a power of two, if there exists an integer x such that n == 2x.
// Follow up: Could you solve it without loops/recursion?
class Solution {
  bool isPowerOfTwo(int n) {
    int flag = 0;
    while (n > 1) {
      if (n % 2 != 0) {
        flag = 1;
        break;
      }
      n = n ~/ 2;
    }
    if (flag == 0 && n > 0)
      return true;
    else
      return false;
  }
}
