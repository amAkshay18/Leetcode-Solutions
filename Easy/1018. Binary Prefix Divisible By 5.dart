class Solution {
  List<bool> prefixesDivBy5(List<int> nums) {
    List<bool> result = [];
    int current = 0;
    for (int bit in nums) {
      current = (current * 2 + bit) % 5;
      result.add(current == 0);
    }
    return result;
  }
}