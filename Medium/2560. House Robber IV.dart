int minCapability(List<int> nums, int k) {
  int left = nums.reduce((a, b) => a < b ? a : b);
  int right = nums.reduce((a, b) => a > b ? a : b);
  bool canRob(int cap) {
    int count = 0;
    int i = 0;
    while (i < nums.length) {
      if (nums[i] <= cap) {
        count++;
        if (count >= k) return true;
        i++;
      }
      i++;
    }
    return count >= k;
  }

  while (left < right) {
    int mid = (left + right) ~/ 2;
    if (canRob(mid)) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }
  return left;
}
