class Solution {
  int sumAndMultiply(int n) {
    String number = n.toString();
    String nonZeroDigits = "";
    int sum = 0;
    for (int i = 0; i < number.length; i++) {
      if (number[i] != '0') {
        nonZeroDigits += number[i];
        sum += int.parse(number[i]);
      }
    }
    if (nonZeroDigits.isEmpty) return 0;
    int x = int.parse(nonZeroDigits);
    return x * sum;
  }
}