import 'dart:math';

class Solution {
  int maximumSum(List<int> nums) {
    int result = -1;
    final Map<int, int> frequency = {};
    for (int num in nums) {
      int key = digitSum(num);
      if (frequency.containsKey(key)) {
        int old = frequency[key]!;
        result = max(result, old + num);
        frequency[key] = max(old, num);
      } else {
        frequency[key] = num;
      }
    }
    return result;
  }
  
  int digitSum(int n) {
    int sum = 0;
    while (n > 0) {
      sum += n % 10;
      n = n ~/ 10;
    }
    return sum;
  }
}