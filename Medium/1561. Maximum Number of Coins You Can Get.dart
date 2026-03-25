class Solution {
  int maxCoins(List<int> piles) {
    piles.sort();
    int n = piles.length;
    int result = 0;
    int index = n - 2;
    for (int i = 0; i < n ~/ 3; i++) {
      result += piles[index];
      index -= 2;
    }
    return result;
  }
}
