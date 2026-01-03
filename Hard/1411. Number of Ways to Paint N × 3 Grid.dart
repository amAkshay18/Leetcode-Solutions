class Solution {
  int numOfWays(int n) {
    const int mod = 1000000007;
    int allDifferentWays = 6;
    int twoSameWays = 6;
    for (int row = 2; row <= n; row++) {
      int newAllDifferentWays = (2 * allDifferentWays + 2 * twoSameWays) % mod;
      int newTwoSameWays = (2 * allDifferentWays + 3 * twoSameWays) % mod;
      allDifferentWays = newAllDifferentWays;
      twoSameWays = newTwoSameWays;
    }
    return (allDifferentWays + twoSameWays) % mod;
  }
}
