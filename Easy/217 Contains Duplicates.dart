// Solution 1
bool containsDuplicate(List<int> nums) {
  Set<int> set = Set<int>();
  for (int i = 0; i < nums.length; i++) {
    if (set.contains(nums[i])) {
      return true;
    } else {
      set.add(nums[i]);
    }
  }
  return false;
}

// Solution 2
bool containsDuplicates2(List<int> nums) {
  return nums.toSet().length < nums.length;
}

// Solution 3
bool containsDupliates3(List<int> nums) {
  Map<int, int> countMap = {};
  for (int num in nums) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }
  for (int count in countMap.values) {
    if (count > 1) {
      return true;
    }
  }
  return false;
}
