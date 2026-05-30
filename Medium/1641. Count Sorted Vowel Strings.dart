class Solution {
  int countVowelStrings(int n) {
    List<int> dp = List.filled(5, 1);
    for (int i = 2; i <= n; i++) {
      for (int j = 1; j < 5; j++) {
        dp[j] += dp[j - 1];
      }
    }
    int answer = 0;
    for (int count in dp) {
      answer += count;
    }
    return answer;
  }
}