import 'dart:math';

class Solution {
  bool checkValidCuts(int n, List<List<int>> rectangles) {
    return canCut(rectangles, 0) || canCut(rectangles, 1);
  }

  bool canCut(List<List<int>> rectangles, int axis) {
    rectangles.sort((a, b) => a[axis].compareTo(b[axis]));
    int cuts = 0;
    int previousEnd = -1;
    for (List<int> rect in rectangles) {
      int start = rect[axis];
      int end = rect[axis + 2];
      if (start >= previousEnd) cuts++;
      previousEnd = max(previousEnd, end);
      if (cuts >= 3) return true;
    }
    return false;
  }
}
