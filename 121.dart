int maxProfit(List<int> prices) {
  int min = prices[0];
  int profit = 0;
  for (int i = 0; i < prices.length; i++) {
    if (prices[i] < min) {
      min = prices[i];
    }
    int potentialProfit = prices[i] - min;
    if (potentialProfit > profit) {
      profit = potentialProfit;
    }
  }
  return profit;
}

void main() {
  List<int> prices = [7, 15, 9, 1];
  int result = maxProfit(prices);
  print(result);
}
