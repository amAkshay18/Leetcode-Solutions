class Solution {
  int rotatedDigits(int n) {
    int validNums = 0;
    for (int i = 1; i <= n; i++) {
      String number = i.toString();
      if (number.contains('3') || number.contains('4') || number.contains('7')) {
        continue;
      }
      else if (number.contains('2') || number.contains('5') || number.contains('6') || number.contains('9')) {
        validNums++;
      }
    }
    return validNums;
  }
}