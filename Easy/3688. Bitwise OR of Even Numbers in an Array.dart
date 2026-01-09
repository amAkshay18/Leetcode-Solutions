class Solution {
  int evenNumberBitwiseORs(List<int> nums) {
    int count = 0;
    for (int num in nums) {
      if (num % 2 == 0) {
        count = count | num;
      }
    }
    return count;
  }
}