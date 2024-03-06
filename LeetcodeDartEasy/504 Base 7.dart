String convertToBase7(int num) {
  if (num == 0) return '0';
  bool isNegative = num < 0;
  num = num.abs();
  String result = '';
  while (num > 0) {
    int remainder = num % 7;
    result = '$remainder$result';
    num ~/= 7;
  }
  if (isNegative) result = '-$result';
  return result;
}
