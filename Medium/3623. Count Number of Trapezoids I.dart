class Solution {
  int countTrapezoids(List<List<int>> points) {
    const int MOD = 1000000007;
    int n = points.length;
    points.sort((a, b) => a[1].compareTo(b[1]));
    int i = 0;
    int j = 0;
    int total = 0;
    int res = 0;
    while (i < n) {
      j = i + 1;
      while (j < n && points[i][1] == points[j][1]) {
        j++;
      }
      int count = j - i;
      int lines = count * (count - 1) ~/ 2;
      res = (res + total * lines) % MOD;
      total = (total + lines) % MOD;
      i = j;
    }
    return res % MOD;
  }
}
