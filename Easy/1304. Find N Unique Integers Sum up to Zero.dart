List<int> sumZero(int n) {
  List<int> result = [];
  if (n % 2 == 0) {
    for (int i = 1; i <= (n / 2); i++) {
      result.add(i);
      result.add(-i);
    }
  } else {
    for (int i = 1; i <= (n - 1) / 2; i++) {
      result.add(i);
      result.add(-i);
    }
    result.add(0);
  }
  return result;
}
