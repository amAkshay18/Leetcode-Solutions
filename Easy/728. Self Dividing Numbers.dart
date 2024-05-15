List<int> selfDividingNumbers(int left, int right) {
  List<int> result = [];
  for (int i = left; i <= right; i++) {
    String numberString = i.toString();
    bool isSelfDividing = true;
    for (int j = 0; j < numberString.length; j++) {
      int digit = int.parse(numberString[j]);
      if (digit == 0 || i % digit != 0) {
        isSelfDividing = false;
        break;
      }
    }
    if (isSelfDividing) result.add(i);
  }
  return result;
}
