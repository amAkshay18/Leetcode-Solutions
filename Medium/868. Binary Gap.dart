class Solution {
  int binaryGap(int n) {
    int smallCount = 0;
    int maxCount = 0;
    while (n > 0) {
      if ((n & 1) == 1) {
        maxCount = smallCount > maxCount ? smallCount : maxCount;
        smallCount = 1;
      } else if (smallCount > 0) {
        smallCount++;
      }
      n >>= 1;
    }
    return maxCount;
  }
}
