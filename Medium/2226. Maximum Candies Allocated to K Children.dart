int maximumCandies(List<int> candies, int k) {
  if (k == 0) return 0;
  int left = 1;
  int right = candies.reduce((a, b) => a > b ? a : b);
  int result = 0;
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int count = 0;
    for (int candy in candies) {
      count += candy ~/ mid;
    }
    if (count >= k) {
      result = mid;
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return result;
}
