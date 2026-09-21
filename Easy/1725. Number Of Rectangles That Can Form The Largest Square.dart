import 'dart:math';
class Solution {
  int countGoodRectangles(List<List<int>> rectangles) {
    int count = 0;
    int maxSide = 0;
    for (List<int> rect in rectangles) {
      int side = min(rect[0], rect[1]);
      if (side > maxSide) {
        count = 1;
        maxSide = side;
      } else if (side == maxSide) {
        count++;
      }
    }
    return count;
  }
}

// Java Solution.
// class Solution {
//   public int countGoodRectangles(int[][] rectangles) {
//     int count = 0;
//     int maxSide = 0;
//     for (int[] rect : rectangles) {
//       int side = Math.min(rect[0], rect[1]);
//       if (side > maxSide) {
//         count = 1;
//         maxSide = side;
//       } else if (side == maxSide) {
//         count++;
//       }
//     }
//     return count;
//   }
// }