// Solution 1 using flag
int alternateDigitSum(int n) {
  String numberString = n.toString();
  int sum = 0;
  bool positive = true;
  for (int i = 0; i < numberString.length; i++) {
    if (positive) {
      sum += int.parse(numberString[i]);
    } else {
      sum -= int.parse(numberString[i]);
    }
    positive = !positive;
  }
  return sum;
}

// Solution 2
int alternateDigitSum2(int n) {
  String str = n.toString();
  int result = 0;
  for (int i = 0; i < str.length; i++) {
    if (i % 2 == 0) {
      result = result + int.parse(str[i]);
    } else {
      result = result - int.parse(str[i]);
    }
  }
  return result;
}
