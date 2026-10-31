import 'dart:math';

class Solution {
  int areaOfMaxDiagonal(List<List<int>> dimensions) {
    double maxDiagonal = 0;
    int maxArea = 0;

    for (var dimension in dimensions) {
      final a = dimension[0];
      final b = dimension[1];
      final diagonal = sqrt(a * a + b * b);
      final area = a * b;

      if (diagonal > maxDiagonal) {
        maxDiagonal = diagonal;
        maxArea = area;
      } else if (diagonal == maxDiagonal) {
        maxArea = max(maxArea, area);
      }
    }

    return maxArea;
  }
}
