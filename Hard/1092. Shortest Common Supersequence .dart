  String shortestCommonSupersequence(String str1, String str2) {
    int m = str1.length; 
    int n = str2.length;
    List<List<int>> dp = List.generate(m + 1, (_) => List.filled(n + 1, 0));
    for (int i = 1; i <= m; i++) {
      for (int j = 1; j <= n; j++) {
        if (str1[i - 1] == str2[j - 1]) {
          dp[i][j] = 1 + dp[i - 1][j - 1];
        } else {
          dp[i][j] = dp[i - 1][j] > dp[i][j - 1] ? dp[i - 1][j] : dp[i][j - 1]; 
        }
      }
    }
    StringBuffer result = StringBuffer();
    int i = m, j = n;
    while (i > 0 && j > 0) {
      if (str1[i - 1] == str2[j - 1]) {
        result.write(str1[i - 1]);
        i--;
        j--;
      } else if (dp[i - 1][j] > dp[i][j - 1]) {
        result.write(str1[i - 1]);
        i--;
      } else {
        result.write(str2[j - 1]);
        j--;
      }
    }
    while (i > 0) {
      result.write(str1[i - 1]);
      i--;
    }
    while (j > 0) {
      result.write(str2[j - 1]);
      j--;
    }
    return result.toString().split('').reversed.join('');
  }
