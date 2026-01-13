class Solution {
  double separateSquares(List<List<int>> squares) {
    double low = double.infinity;
    double high = -double.infinity;
    for (var sq in squares) {
      double y = sq[1].toDouble();
      double l = sq[2].toDouble();
      low = low < y ? low : y;
      high = high > (y + l) ? high : (y + l);
    }
    for (int i = 0; i < 60; i++) {
      double mid = (low + high) / 2;
      double areaBelow = 0.0;
      double areaAbove = 0.0;
      for (var sq in squares) {
        double y = sq[1].toDouble();
        double l = sq[2].toDouble();
        double top = y + l;
        if (top <= mid) {
          areaBelow += l * l;
        } else if (y >= mid) {
          areaAbove += l * l;
        } else {
          double belowHeight = mid - y;
          double aboveHeight = top - mid;
          areaBelow += belowHeight * l;
          areaAbove += aboveHeight * l;
        }
      }
      if (areaBelow < areaAbove) {
        low = mid;
      } else {
        high = mid;
      }
    }
    return low;
  }
}
