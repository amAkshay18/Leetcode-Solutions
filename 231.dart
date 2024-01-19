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
