class Solution {
  int longestAlternatingSubarray(List<int> nums, int threshold) {
    int longest = 0;
    int current = 0;
    for (int i = 0; i < nums.length; i++) {
      // Start only with an even number
      if (nums[i] <= threshold && nums[i] % 2 == 0) {
        current = 1;
        // Continue while next numbers are within threshold
        // and have alternating parity
        for (int j = i + 1; j < nums.length; j++) {
          if (nums[j] > threshold ||
              nums[j] % 2 == nums[j - 1] % 2) {
            break;
          }
          current++;
        }
        if (current > longest) {
          longest = current;
        }
      }
    }
    return longest;
  }
}