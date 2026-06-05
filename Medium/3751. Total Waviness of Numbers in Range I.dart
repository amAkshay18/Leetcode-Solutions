class Solution {
  int totalWaviness(int num1, int num2) {
    int result = 0;
    for (int i = num1; i <= num2; i++) {
      String numberStr = '$i';
      for (int i = 0; i + 2 < numberStr.length; i++) {
        if ((numberStr.codeUnitAt(i) - numberStr.codeUnitAt(i + 1)) * (numberStr.codeUnitAt(i + 2) - numberStr.codeUnitAt(i + 1)) > 0) {
          result++;
        }
      }
    }
    return result;
  }
}