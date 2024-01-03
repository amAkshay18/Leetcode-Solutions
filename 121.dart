// 121. Best Time to Buy and Sell Stock

// You are given an array prices where prices[i] is the price of a given stock on the ith day.

// You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

// Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
// solution

class Solution {
  // This function calculates the maximum profit that can be achieved by buying and selling stocks.
  // It takes a list of stock prices as input.
  // Parameters:
  // - prices: a list of stock prices where prices[i] is the price of a given stock on day i.
  // Returns the maximum profit that can be achieved by buying and selling the stock.
  int maxProfit(List<int> prices) {
    // Initialize the minimum price to the first price in the list.
    int min = prices[0];

    // Initialize the maximum profit to 0.
    int profit = 0;

    // Iterate through the list of prices.
    for (int i = 0; i < prices.length; i++) {
      // Update the minimum price if a lower price is encountered.
      if (prices[i] < min) {
        min = prices[i];
      }

      // Calculate the potential profit for the current day.
      int potentialProfit = prices[i] - min;

      // Update the maximum profit if the potential profit is greater.
      if (potentialProfit > profit) {
        profit = potentialProfit;
      }
    }

    // Return the maximum profit that can be achieved.
    return profit;
  }
}
