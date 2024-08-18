int pivotInteger(int n) {
  int totalSum = 0;
  for (int i = 0; i <= n; i++) {
    totalSum += i;
  }
  int preSum = 0;
  for (int i = 1; i <= n; i++) {
    if (preSum == totalSum - preSum - i) {
      return i;
    }
    preSum += i;
  }
  return -1;
}
