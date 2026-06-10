class Solution {
  int countDistinctIntegers(List<int> nums) {
    Set<int> result = {};
    for (int num in nums) {
      result.add(num);
      result.add(_reverse(num));
    }
    return result.length;
  }
  int _reverse(int num) {
    int rev = 0;
    while (num > 0) {
      rev = rev * 10 + num % 10;
      num ~/= 10;
    }
    return rev;
  }
}