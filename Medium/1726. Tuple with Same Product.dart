
  int tupleSameProduct(List<int> nums) {
  int len = nums.length;
  Map<int, List<List<int>>> map = {};

  for (var i = 0; i < len; i++) {
    for (var j = i + 1; j < len; j++) {
      int p = nums[i] * nums[j];
      if (!map.containsKey(p)) {
        map[p] = [];
      }
      map[p]!.add([nums[i], nums[j]]);
    }
  }

  int count = 0;
  for (var pairs in map.values) {
    int n = pairs.length;
    if (n > 1) {
      count += (n * (n - 1) ~/ 2) * 8;
    }
  }
  return count;  
  }
