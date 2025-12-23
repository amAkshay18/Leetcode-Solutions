class Solution {
  int sumOfEncryptedInt(List<int> nums) {
    int totalSum = 0;
    for (int num in nums) {
      int temp = num;
      int maxDigit = 0;
      int digitCount = 0;
      while (temp > 0) {
        int digit = temp % 10;
        if (digit > maxDigit) {
          maxDigit = digit;
        }
        digitCount++;
        temp = temp ~/ 10;
      }
      int encryptedNumber = 0;
      for (int i = 0; i < digitCount; i++) {
        encryptedNumber = encryptedNumber * 10 + maxDigit;
      }
      totalSum += encryptedNumber;
    }
    return totalSum;
  }
}