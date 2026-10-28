class Solution {
  int sumIndicesWithKSetBits(List<int> nums, int k) {
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      int setBits = i.toRadixString(2).split('1').length - 1;
      if (setBits == k) sum += nums[i];
    }
    return sum;
  }
}
