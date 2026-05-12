class Solution {
  List<int> findDegrees(List<List<int>> matrix) {
    int n = matrix.length;
    List<int> ans = List.filled(n, 0);
    for (int i = 0; i < n; i++) {
      int degree = 0;
      for (int j = 0; j < n; j++) {
        if (matrix[i][j] == 1) {
          degree++;
        }
      }
      ans[i] = degree;
    }
    return ans;
  }
}