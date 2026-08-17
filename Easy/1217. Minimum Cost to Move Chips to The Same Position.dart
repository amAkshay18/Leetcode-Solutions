import 'dart:math';

class Solution {
  int minCostToMoveChips(List<int> position) {
    int even = 0;
    int odd = 0;
    for (int pos in position) {
      if (pos % 2 == 0) {
        even++;
      } else {
        odd++;
      }
    }
    return min(even, odd);
  }
}