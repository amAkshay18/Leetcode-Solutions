class Solution {
  int intersectionSizeTwo(List<List<int>> intervals) {
    intervals.sort((x, y) {
      int x0 = x[0], x1 = x[1];
      int y0 = y[0], y1 = y[1];
      return (x1 == y1) ? (y0 - x0) : (x1 - y1);  
    });
    int count = 2;
    int n = intervals.length;
    int b = intervals[0][1];
    int a = b - 1;
    for (int i = 1; i < n; i++) {
      int l = intervals[i][0];
      int r = intervals[i][1];
      if (a >= l) continue;
      bool flag = l > b;
      count += 1 + (flag ? 1 : 0);
      a = flag ? r - 1 : b;
      b = r;
    }
    return count;
  }
}