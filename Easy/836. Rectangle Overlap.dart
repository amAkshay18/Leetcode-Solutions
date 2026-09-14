class Solution {
  bool isRectangleOverlap(List<int> rec1, List<int> rec2) {
    int x11 = rec1[0];
    int x21 = rec1[2];
    int y11 = rec1[1];
    int y21 = rec1[3];

    int x12 = rec2[0];
    int x22 = rec2[2];
    int y12 = rec2[1];
    int y22 = rec2[3];

    if (x21 <= x12 || y21 <= y12) {
      return false;
    } else if (x22 <= x11 || y22 <= y11) {
      return false;
    }
    return true;
  }
}