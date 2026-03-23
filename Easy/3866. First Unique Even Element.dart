class Solution {
  int firstUniqueEven(List<int> nums) {
    Map<int, int> frequency = {};
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] % 2 == 0) {
        frequency[nums[i]] = (frequency[nums[i]] ?? 0) + 1;
      }
    }
    for (var key in frequency.keys) {
      if (frequency[key] == 1) return key;
    }
    return -1;
  }
}
