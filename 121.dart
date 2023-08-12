// 121. Best Time to Buy and Sell Stock

// You are given an array prices where prices[i] is the price of a given stock on the ith day.

// You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

// Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
// solution

class Solution {
  int maxProfit(List<int> prices) {
    int min = prices[0];
    int profit = 0;

    for (int i = 0; i < prices.length; i++) {
      if (prices[i] < min) {
        min = prices[i];
      }
      int pro = prices[i] - min;
      if (pro > profit) {
        profit = pro;
      }
    }

    return profit;
  }
}
