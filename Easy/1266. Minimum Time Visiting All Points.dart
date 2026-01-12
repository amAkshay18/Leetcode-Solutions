class Solution {
  int minTimeToVisitAllPoints(List<List<int>> points) {
    int totalTime = 0;
    for (int i = 0; i < points.length - 1; i++) {
      int dx = (points[i + 1][0] - points[i][0]).abs();
      int dy = (points[i + 1][1] - points[i][1]).abs();
      totalTime += dx > dy ? dx : dy;
    }
    return totalTime;
  }
}