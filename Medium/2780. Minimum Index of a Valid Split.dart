class Solution {
  int minimumIndex(List<int> nums) {
    int n = nums.length;
    Map<int, int> freq = {};
    for (int num in nums) {
      freq[num] = (freq[num] ?? 0) + 1;
    }
    int dominant = -1;
    int dominantCount = 0;
    for (var entry in freq.entries) {
      if (entry.value * 2 > n) {
        dominant = entry.key;
        dominantCount = entry.value;
        break;
      }
    }
    if (dominant == -1) return -1;
    int leftCount = 0;
    for (int i = 0; i < n - 1; i++) {
      if (nums[i] == dominant) {
        leftCount++;
      }
      int rightCount = dominantCount - leftCount;  
      if (leftCount * 2 > (i + 1) && rightCount * 2 > (n - i - 1)) {
        return i;
      }
    }
    return -1;        
  }
}