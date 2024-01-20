String removeTrailingZeros(String num) {
  for (int i = num.length - 1; i >= 0; i--) {
    if (num[i] == '0') {
      num = num.substring(0, num.length - 1);
    } else {
      return num;
    }
  }
  return num;
}
