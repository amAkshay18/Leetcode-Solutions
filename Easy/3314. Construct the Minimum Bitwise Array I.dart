class Solution {
  List<int> minBitwiseArray(List<int> nums) {
    List<int> result = [];
    for (int num in nums) {
      if ((num & 1) == 1)
        result.add(num & ~(((num + 1) & ~num) >> 1));
      else
        result.add(-1);
    }
    return result;
  }
}
