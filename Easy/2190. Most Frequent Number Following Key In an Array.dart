int mostFrequent(List<int> nums, int key) {
  Map<int, int> counts = {};
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == key) {
      int target = nums[i + 1];
      counts[target] = (counts[target] ?? 0) + 1;
    }
  }
  int maxCount = 0;
  int mostFrequentTarget = 0;
  counts.forEach((target, count) {
    if (count > maxCount) {
      maxCount = count;
      mostFrequentTarget = target;
    }
  });
  return mostFrequentTarget;
}
