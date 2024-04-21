int buyChoco(List<int> prices, int money) {
  prices.sort();
  int balance = money - prices[0] + prices[1];
  if (balance < 0) {
    return money;
  } else {
    return balance;
  }
}
