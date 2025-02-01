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
int n = nums.length;
    int low = 0;
    int high = n - 1;

    while (low <= high) {
      int mid = low + (high - low) ~/ 2;

      if (nums[mid] == target) {
        return true;
      }

      if (nums[low] == nums[mid] && nums[mid] == nums[high]) {
        low++;
        high--;
      } 
      // Left sorted
      else if (nums[low] <= nums[mid]) {
        if (nums[low] <= target && target <= nums[mid]) {
          high = mid - 1;
        } else {
          low = mid + 1;
        }
      } else {
        if (nums[mid] <= target && target <= nums[high]) {
          low = mid + 1;
        } else {
          high = mid - 1;
        }
      }
    }
    return false;
}
