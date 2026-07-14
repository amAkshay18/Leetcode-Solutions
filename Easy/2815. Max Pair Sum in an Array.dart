class Solution {
  int maxSum(List<int> nums) {
    List<int> largest = List.filled(10, -1);
    int result = -1;
    for (int num in nums) {
      int maxDigit = getLargestDigit(num);
      if (largest[maxDigit] != -1) {
        result = result > (largest[maxDigit] + num)
            ? result
            : (largest[maxDigit] + num);
      }
      if (num > largest[maxDigit]) {
        largest[maxDigit] = num;
      }
    }
    return result;
  }
  int getLargestDigit(int num) {
    int largestDigit = 0;
    while (num > 0) {
      int digit = num % 10;
      if (digit > largestDigit) {
        largestDigit = digit;
      }
      num ~/= 10;
    }
    return largestDigit;
  }
}