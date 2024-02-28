String removeDigit(String number, int digit) {
  List<String> num = [];
  for (int i = 0; i < number.length; i++) {
    if (number[i] == digit) {
      String temp = number.substring(0, i) + number.substring(i + 1);
      num.add(temp);
    }
  }
  num.sort();
  return num[num.length - 1];
}
