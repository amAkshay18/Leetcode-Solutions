class Solution {
  int minimumDeleteSum(String s1, String s2) {
    int n = s1.length;
    int m = s2.length;
    List<List<int>> dp = List.generate(n + 1, (_) => List.filled(m + 1, 0));
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= m; j++) {
        if (s1[i - 1] == s2[j - 1]) {
          dp[i][j] =
              dp[i - 1][j - 1] + s1.codeUnitAt(i - 1);
        } else {
          if (dp[i - 1][j] > dp[i][j - 1]) {
            dp[i][j] = dp[i - 1][j];
          } else {
            dp[i][j] = dp[i][j - 1];
          }
        }
      }
    }
    int totalSum = 0;
    for (int i = 0; i < n; i++) {
      totalSum += s1.codeUnitAt(i);
    }
    for (int j = 0; j < m; j++) {
      totalSum += s2.codeUnitAt(j);
    }
    return totalSum - 2 * dp[n][m];
  }
}
