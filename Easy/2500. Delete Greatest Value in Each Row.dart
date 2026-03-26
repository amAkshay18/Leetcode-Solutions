class Solution {
  int deleteGreatestValue(List<List<int>> grid) {
    int m = grid.length;
    int n = grid[0].length;
    for (int i = 0; i < m; i++) {
      grid[i].sort();
    }
    int answer = 0;
    for (int col = 0; col < n; col++) {
      int maxVal = 0;
      for (int row = 0; row < m; row++) {
        if (grid[row][col] > maxVal) {
          maxVal = grid[row][col];
        }
      }
      answer += maxVal;
    }
    return answer;
  }
}
