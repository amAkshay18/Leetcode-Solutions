class Solution {
  int countCommas(int n) {
    int total = 0;
    for (int i = 1; i <= n; i++) {
      String numStr = i.toString();
      if (numStr.length >= 4) {
        total += (numStr.length - 1) ~/ 3;
      }
    }
    return total;
  }
}