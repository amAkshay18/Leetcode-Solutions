int arrangeCoins(int n) {
  int count = 0;
  for (int i = 1; i <= n; i++) {
    i = i + count + 1;
    count++;
  }
  return count;
}
