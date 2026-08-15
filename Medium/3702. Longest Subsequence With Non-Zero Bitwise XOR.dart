class Solution {
  int longestSubsequence(List<int> nums) {
    int xorValue = 0;
    bool hasNonZero = false;

    for (int num in nums) {
      xorValue ^= num;

      if (num != 0) {
        hasNonZero = true;
      }
    }

    // Whole array has non-zero XOR
    if (xorValue != 0) {
      return nums.length;
    }

    // Whole array XOR is 0,
    // but we can remove one non-zero element
    if (hasNonZero) {
      return nums.length - 1;
    }

    // All elements are 0
    return 0;
  }
}