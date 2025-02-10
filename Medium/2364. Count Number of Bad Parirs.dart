int countBadPairs(List<int> nums) {
  int n = nums.length;
  int totalPairs = (n * (n - 1)) ~/ 2;
  Map<int, int> freqMap = {};
  int goodPairs = 0;
  for (int i = 0; i < n; i++) {
    int key = i - nums[i];
    if (freqMap.containsKey(key)){
      goodPairs += freqMap[key]!;
    }
    freqMap[key] = (freqMap[key] ?? 0) + 1;
  }
  return totalPairs - goodPairs;
}