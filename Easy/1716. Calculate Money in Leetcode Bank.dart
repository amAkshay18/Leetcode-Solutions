int totalMoney(int n) {
  int result = 0;
  int start = 1;
  int money = 0;
  for (int i = 1; i <= n; i++) {
    result += money;
    money++;
    if (i % 7 == 0) {
      start++;
      money = start;
    }
  }
  return result;
}
