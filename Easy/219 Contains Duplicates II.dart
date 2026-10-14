class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && (j - i).abs() <= k) {
          return true;
        }
      }
    }
    return false;
  }
}

//solution 2
class Solution2 {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> mp = {}; 
    int n = nums.length;
    for (int i = 0; i < n; i++) {
      if (mp.containsKey(nums[i])) {
        if ((i - mp[nums[i]]!).abs() <= k) {
          return true;
        }
      }
      mp[nums[i]] = i;
    }
    return false;
  }
}
