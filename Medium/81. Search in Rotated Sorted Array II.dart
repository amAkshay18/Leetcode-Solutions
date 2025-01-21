// Solution 1: Simple Solution
bool search1(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return true;
    }
  }
  return false;
}

// Solution 2: One line Solution
bool search2(List<int> nums, int target) {
  return nums.contains(target);
}


// Solution 3: Binary Search
bool search3 (List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;
  while (left<= right) {
    int mid = left + (right - left) ~/2;
    if (nums[mid] == target) {
      return true;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return false;
}
