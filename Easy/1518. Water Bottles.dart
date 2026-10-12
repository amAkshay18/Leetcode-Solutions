class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    int total = numBottles;
    int empty = numBottles;
    while (empty >= numExchange) {
      int newBottles = empty ~/ numExchange;
      total += newBottles;
      empty = newBottles + (empty % numExchange);
    }
    return total;
  }
}
